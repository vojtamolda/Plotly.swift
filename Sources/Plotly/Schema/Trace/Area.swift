/// 
struct Area: Encodable {
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    var visible: Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    var showlegend: Bool?

    /// Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.
    var legendgroup: String?

    /// Sets the opacity of the trace.
    var opacity: Double?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    var customdata: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    var meta: Anything?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    struct Hoverinfo: OptionSet, Encodable {
        let rawValue: Int
    
        static let x = Hoverinfo(rawValue: 1 << 0)
        static let y = Hoverinfo(rawValue: 1 << 1)
        static let z = Hoverinfo(rawValue: 1 << 2)
        static let text = Hoverinfo(rawValue: 1 << 3)
        static let name = Hoverinfo(rawValue: 1 << 4)
    
        init(rawValue: Int) { self.rawValue = rawValue }
    
        func encode(to encoder: Encoder) throws {
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
    var hoverinfo: Hoverinfo?

    /// 
    struct Hoverlabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        var bgcolor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        var bordercolor: Color?
    
        /// Sets the font used in hover labels.
        struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var size: Double?
        
            /// 
            var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            var colorsrc: String?
        
        }
        /// Sets the font used in hover labels.
        var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        var namelength: Int?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        var bordercolorsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        var namelengthsrc: String?
    
    }
    /// 
    var hoverlabel: Hoverlabel?

    /// 
    struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        var maxpoints: Double?
    
    }
    /// 
    var stream: Stream?

    /// 
    struct Transforms: Encodable {
        /// 
        struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            struct Transform: Encodable {
            }
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            var transform: Transform?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var transforms: Transforms?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    var uirevision: Anything?

    /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets the radial coordinates for legacy polar chart only.
    var r: [Double]?

    /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets the angular coordinates for legacy polar chart only.
    var t: [Double]?

    /// 
    struct Marker: Encodable {
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets themarkercolor. It accepts either a specific color or an array of numbers that are mapped to the colorscale relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax` if set.
        var color: Color?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets the marker size (in px).
        var size: Double?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or *dot-open* to a symbol name.
        enum Symbol: Int, Encodable {
            case circle = 0
            case circleopen = 100
            case circledot = 200
            case circleopendot = 300
            case square = 1
            case squareopen = 101
            case squaredot = 201
            case squareopendot = 301
            case diamond = 2
            case diamondopen = 102
            case diamonddot = 202
            case diamondopendot = 302
            case cross = 3
            case crossopen = 103
            case crossdot = 203
            case crossopendot = 303
            case x = 4
            case xopen = 104
            case xdot = 204
            case xopendot = 304
            case triangleup = 5
            case triangleupopen = 105
            case triangleupdot = 205
            case triangleupopendot = 305
            case triangledown = 6
            case triangledownopen = 106
            case triangledowndot = 206
            case triangledownopendot = 306
            case triangleleft = 7
            case triangleleftopen = 107
            case triangleleftdot = 207
            case triangleleftopendot = 307
            case triangleright = 8
            case trianglerightopen = 108
            case trianglerightdot = 208
            case trianglerightopendot = 308
            case trianglene = 9
            case triangleneopen = 109
            case trianglenedot = 209
            case triangleneopendot = 309
            case trianglese = 10
            case triangleseopen = 110
            case trianglesedot = 210
            case triangleseopendot = 310
            case trianglesw = 11
            case triangleswopen = 111
            case triangleswdot = 211
            case triangleswopendot = 311
            case trianglenw = 12
            case trianglenwopen = 112
            case trianglenwdot = 212
            case trianglenwopendot = 312
            case pentagon = 13
            case pentagonopen = 113
            case pentagondot = 213
            case pentagonopendot = 313
            case hexagon = 14
            case hexagonopen = 114
            case hexagondot = 214
            case hexagonopendot = 314
            case hexagon2 = 15
            case hexagon2open = 115
            case hexagon2dot = 215
            case hexagon2opendot = 315
            case octagon = 16
            case octagonopen = 116
            case octagondot = 216
            case octagonopendot = 316
            case star = 17
            case staropen = 117
            case stardot = 217
            case staropendot = 317
            case hexagram = 18
            case hexagramopen = 118
            case hexagramdot = 218
            case hexagramopendot = 318
            case startriangleup = 19
            case startriangleupopen = 119
            case startriangleupdot = 219
            case startriangleupopendot = 319
            case startriangledown = 20
            case startriangledownopen = 120
            case startriangledowndot = 220
            case startriangledownopendot = 320
            case starsquare = 21
            case starsquareopen = 121
            case starsquaredot = 221
            case starsquareopendot = 321
            case stardiamond = 22
            case stardiamondopen = 122
            case stardiamonddot = 222
            case stardiamondopendot = 322
            case diamondtall = 23
            case diamondtallopen = 123
            case diamondtalldot = 223
            case diamondtallopendot = 323
            case diamondwide = 24
            case diamondwideopen = 124
            case diamondwidedot = 224
            case diamondwideopendot = 324
            case hourglass = 25
            case hourglassopen = 125
            case bowtie = 26
            case bowtieopen = 126
            case circlecross = 27
            case circlecrossopen = 127
            case circlex = 28
            case circlexopen = 128
            case squarecross = 29
            case squarecrossopen = 129
            case squarex = 30
            case squarexopen = 130
            case diamondcross = 31
            case diamondcrossopen = 131
            case diamondx = 32
            case diamondxopen = 132
            case crossthin = 33
            case crossthinopen = 133
            case xthin = 34
            case xthinopen = 134
            case asterisk = 35
            case asteriskopen = 135
            case hash = 36
            case hashopen = 136
            case hashdot = 236
            case hashopendot = 336
            case yup = 37
            case yupopen = 137
            case ydown = 38
            case ydownopen = 138
            case yleft = 39
            case yleftopen = 139
            case yright = 40
            case yrightopen = 140
            case lineew = 41
            case lineewopen = 141
            case linens = 42
            case linensopen = 142
            case linene = 43
            case lineneopen = 143
            case linenw = 44
            case linenwopen = 144
        }
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or *dot-open* to a symbol name.
        var symbol: Symbol?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. Sets the marker opacity.
        var opacity: Double?
    
        /// Sets the source reference on plot.ly for  color .
        var colorsrc: String?
    
        /// Sets the source reference on plot.ly for  size .
        var sizesrc: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        var symbolsrc: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        var opacitysrc: String?
    
    }
    /// 
    var marker: Marker?

    /// Sets the source reference on plot.ly for  ids .
    var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    var metasrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  r .
    var rsrc: String?

    /// Sets the source reference on plot.ly for  t .
    var tsrc: String?

}