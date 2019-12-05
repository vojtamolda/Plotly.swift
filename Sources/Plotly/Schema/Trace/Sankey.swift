/// Sankey plots for network flow data analysis. The nodes are specified in `nodes` and the links between sources and targets in `links`. The colors are set in `nodes[i].color` and `links[i].color`, otherwise defaults are used.
struct Sankey: Encodable {
    let type: String = "sankey"

    let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    var visible: Visible?

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

    /// Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.
    var selectedpoints: Anything?

    struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        var maxpoints: Double?
    
    }
    var stream: Stream?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    var uirevision: Anything?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired. Note that this attribute is superseded by `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    struct Hoverinfo: OptionSet, Encodable {
        let rawValue: Int
    
        static let all = Hoverinfo(rawValue: 1 << 0)
        static let none = Hoverinfo(rawValue: 1 << 1)
        static let skip = Hoverinfo(rawValue: 1 << 2)
    
        init(rawValue: Int) { self.rawValue = rawValue }
    
        func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired. Note that this attribute is superseded by `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    var hoverinfo: Hoverinfo?

    struct Hoverlabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        var bgcolor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        var bordercolor: Color?
    
        /// Sets the font used in hover labels.
        struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            var size: Double?
        
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
    var hoverlabel: Hoverlabel?

    struct Domain: Encodable {
        /// Sets the horizontal domain of this sankey trace (in plot fraction).
        var x: InfoArray?
    
        /// Sets the vertical domain of this sankey trace (in plot fraction).
        var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this sankey trace .
        var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this sankey trace .
        var column: Int?
    
    }
    var domain: Domain?

    /// Sets the orientation of the Sankey diagram.
    enum Orientation: String, Encodable {
        case v
        case h
    }
    /// Sets the orientation of the Sankey diagram.
    var orientation: Orientation?

    /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    var valueformat: String?

    /// Adds a unit to follow the value in the hover tooltip. Add a space if a separation is necessary from the value.
    var valuesuffix: String?

    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are stationary.
    enum Arrangement: String, Encodable {
        case snap
        case perpendicular
        case freeform
        case fixed
    }
    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are stationary.
    var arrangement: Arrangement?

    /// Sets the font for node labels
    struct Textfont: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        var family: String?
    
        var size: Double?
    
        var color: Color?
    
    }
    /// Sets the font for node labels
    var textfont: Textfont?

    /// The nodes of the Sankey plot.
    struct Node: Encodable {
        /// The shown name of the node.
        var label: [Double]?
    
        /// Groups of nodes. Each group is defined by an array with the indices of the nodes it contains. Multiple groups can be specified.
        var groups: InfoArray?
    
        /// The normalized horizontal position of the node.
        var x: [Double]?
    
        /// The normalized vertical position of the node.
        var y: [Double]?
    
        /// Sets the `node` color. It can be a single value, or an array for specifying color for each `node`. If `node.color` is omitted, then the default `Plotly` color palette will be cycled through to have a variety of colors. These defaults are not fully opaque, to allow some visibility of what is beneath the node.
        var color: Color?
    
        struct Line: Encodable {
            /// Sets the color of the `line` around each `node`.
            var color: Color?
        
            /// Sets the width (in px) of the `line` around each `node`.
            var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            var colorsrc: String?
        
            /// Sets the source reference on plot.ly for  width .
            var widthsrc: String?
        
        }
        var line: Line?
    
        /// Sets the padding (in px) between the `nodes`.
        var pad: Double?
    
        /// Sets the thickness (in px) of the `nodes`.
        var thickness: Double?
    
        /// Determines which trace information appear when hovering nodes. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
        enum Hoverinfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering nodes. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
        var hoverinfo: Hoverinfo?
    
        struct Hoverlabel: Encodable {
            /// Sets the background color of the hover labels for this trace
            var bgcolor: Color?
        
            /// Sets the border color of the hover labels for this trace.
            var bordercolor: Color?
        
            /// Sets the font used in hover labels.
            struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                var size: Double?
            
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
        var hoverlabel: Hoverlabel?
    
        /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `value` and `label`. Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
        var hovertemplate: String?
    
        /// Sets the source reference on plot.ly for  label .
        var labelsrc: String?
    
        /// Sets the source reference on plot.ly for  x .
        var xsrc: String?
    
        /// Sets the source reference on plot.ly for  y .
        var ysrc: String?
    
        /// Sets the source reference on plot.ly for  color .
        var colorsrc: String?
    
        /// Sets the source reference on plot.ly for  hovertemplate .
        var hovertemplatesrc: String?
    
    }
    /// The nodes of the Sankey plot.
    var node: Node?

    /// The links of the Sankey plot.
    struct Link: Encodable {
        /// The shown name of the link.
        var label: [Double]?
    
        /// Sets the `link` color. It can be a single value, or an array for specifying color for each `link`. If `link.color` is omitted, then by default, a translucent grey link will be used.
        var color: Color?
    
        struct Line: Encodable {
            /// Sets the color of the `line` around each `link`.
            var color: Color?
        
            /// Sets the width (in px) of the `line` around each `link`.
            var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            var colorsrc: String?
        
            /// Sets the source reference on plot.ly for  width .
            var widthsrc: String?
        
        }
        var line: Line?
    
        /// An integer number `[0..nodes.length - 1]` that represents the source node.
        var source: [Double]?
    
        /// An integer number `[0..nodes.length - 1]` that represents the target node.
        var target: [Double]?
    
        /// A numeric value representing the flow volume value.
        var value: [Double]?
    
        /// Determines which trace information appear when hovering links. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
        enum Hoverinfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering links. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
        var hoverinfo: Hoverinfo?
    
        struct Hoverlabel: Encodable {
            /// Sets the background color of the hover labels for this trace
            var bgcolor: Color?
        
            /// Sets the border color of the hover labels for this trace.
            var bordercolor: Color?
        
            /// Sets the font used in hover labels.
            struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                var size: Double?
            
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
        var hoverlabel: Hoverlabel?
    
        /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `value` and `label`. Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
        var hovertemplate: String?
    
        struct Colorscales: Encodable {
            struct Items: Encodable {
                struct Concentrationscales: Encodable {
                    /// The label of the links to color based on their concentration within a flow.
                    var label: String?
                
                    /// Sets the upper bound of the color domain.
                    var cmax: Double?
                
                    /// Sets the lower bound of the color domain.
                    var cmin: Double?
                
                    /// Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
                    var colorscale: ColorScale?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                    var templateitemname: String?
                
                }
                var concentrationscales: Concentrationscales?
            
            }
            var items: Items?
        
        }
        var colorscales: Colorscales?
    
        /// Sets the source reference on plot.ly for  label .
        var labelsrc: String?
    
        /// Sets the source reference on plot.ly for  color .
        var colorsrc: String?
    
        /// Sets the source reference on plot.ly for  source .
        var sourcesrc: String?
    
        /// Sets the source reference on plot.ly for  target .
        var targetsrc: String?
    
        /// Sets the source reference on plot.ly for  value .
        var valuesrc: String?
    
        /// Sets the source reference on plot.ly for  hovertemplate .
        var hovertemplatesrc: String?
    
    }
    /// The links of the Sankey plot.
    var link: Link?

    /// Sets the source reference on plot.ly for  ids .
    var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    var metasrc: String?

}