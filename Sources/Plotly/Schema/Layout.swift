/// 
struct Layout: Encodable {
    /// 
    struct Mapbox: Encodable {
        /// 
        struct Domain: Encodable {
            /// Sets the vertical domain of this mapbox subplot (in plot fraction).
            var y: InfoArray?
        
            /// Sets the horizontal domain of this mapbox subplot (in plot fraction).
            var x: InfoArray?
        
            /// If there is a layout grid, use the domain for this column in the grid for this mapbox subplot .
            var column: Int?
        
            /// If there is a layout grid, use the domain for this row in the grid for this mapbox subplot .
            var row: Int?
        
        }
        /// 
        var domain: Domain?
    
        /// 
        struct Layers: Encodable {
            /// 
            struct Items: Encodable {
                /// 
                struct Layer: Encodable {
                    /// Sets the primary layer color. If `type` is *circle*, color corresponds to the circle color (mapbox.layer.paint.circle-color) If `type` is *line*, color corresponds to the line color (mapbox.layer.paint.line-color) If `type` is *fill*, color corresponds to the fill color (mapbox.layer.paint.fill-color) If `type` is *symbol*, color corresponds to the icon color (mapbox.layer.paint.icon-color)
                    var color: Color?
                
                    /// Specifies the layer to use from a vector tile source (mapbox.layer.source-layer). Required for *vector* source type that supports multiple layers.
                    var sourcelayer: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// 
                    struct Symbol: Encodable {
                        /// Sets the symbol text (mapbox.layer.layout.text-field).
                        var text: String?
                    
                        /// Sets the symbol icon image (mapbox.layer.layout.icon-image). Full list: https://www.mapbox.com/maki-icons/
                        var icon: String?
                    
                        /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
                        enum Textposition: String, Encodable {
                            case topleft
                            case topcenter
                            case topright
                            case middleleft
                            case middlecenter
                            case middleright
                            case bottomleft
                            case bottomcenter
                            case bottomright
                        }
                        /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
                        var textposition: Textposition?
                    
                        /// Sets the icon text font (color=mapbox.layer.paint.text-color, size=mapbox.layer.layout.text-size). Has an effect only when `type` is set to *symbol*.
                        struct Textfont: Encodable {
                            /// 
                            var size: Double?
                        
                            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                            var family: String?
                        
                            /// 
                            var color: Color?
                        
                        }
                        /// Sets the icon text font (color=mapbox.layer.paint.text-color, size=mapbox.layer.layout.text-size). Has an effect only when `type` is set to *symbol*.
                        var textfont: Textfont?
                    
                        /// Sets the symbol and/or text placement (mapbox.layer.layout.symbol-placement). If `placement` is *point*, the label is placed where the geometry is located If `placement` is *line*, the label is placed along the line of the geometry If `placement` is *line-center*, the label is placed on the center of the geometry
                        enum Placement: String, Encodable {
                            case point
                            case line
                            case linecenter
                        }
                        /// Sets the symbol and/or text placement (mapbox.layer.layout.symbol-placement). If `placement` is *point*, the label is placed where the geometry is located If `placement` is *line*, the label is placed along the line of the geometry If `placement` is *line-center*, the label is placed on the center of the geometry
                        var placement: Placement?
                    
                        /// Sets the symbol icon size (mapbox.layer.layout.icon-size). Has an effect only when `type` is set to *symbol*.
                        var iconsize: Double?
                    
                    }
                    /// 
                    var symbol: Symbol?
                
                    /// 
                    struct Line: Encodable {
                        /// Sets the line width (mapbox.layer.paint.line-width). Has an effect only when `type` is set to *line*.
                        var width: Double?
                    
                        /// Sets the length of dashes and gaps (mapbox.layer.paint.line-dasharray). Has an effect only when `type` is set to *line*.
                        var dash: [Double]?
                    
                        /// Sets the source reference on plot.ly for  dash .
                        var dashsrc: String?
                    
                    }
                    /// 
                    var line: Line?
                
                    /// Determines whether this layer is displayed
                    var visible: Bool?
                
                    /// Sets the opacity of the layer. If `type` is *circle*, opacity corresponds to the circle opacity (mapbox.layer.paint.circle-opacity) If `type` is *line*, opacity corresponds to the line opacity (mapbox.layer.paint.line-opacity) If `type` is *fill*, opacity corresponds to the fill opacity (mapbox.layer.paint.fill-opacity) If `type` is *symbol*, opacity corresponds to the icon/text opacity (mapbox.layer.paint.text-opacity)
                    var opacity: Double?
                
                    /// 
                    struct Fill: Encodable {
                        /// Sets the fill outline color (mapbox.layer.paint.fill-outline-color). Has an effect only when `type` is set to *fill*.
                        var outlinecolor: Color?
                    
                    }
                    /// 
                    var fill: Fill?
                
                    /// Sets the source data for this layer (mapbox.layer.source). When `sourcetype` is set to *geojson*, `source` can be a URL to a GeoJSON or a GeoJSON object. When `sourcetype` is set to *vector* or *raster*, `source` can be a URL or an array of tile URLs. When `sourcetype` is set to *image*, `source` can be a URL to an image.
                    var source: Anything?
                
                    /// Determines if the layer will be inserted before the layer with the specified ID. If omitted or set to '', the layer will be inserted above every existing layer.
                    var below: String?
                
                    /// Sets the attribution for this source.
                    var sourceattribution: String?
                
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                    var templateitemname: String?
                
                    /// 
                    struct Circle: Encodable {
                        /// Sets the circle radius (mapbox.layer.paint.circle-radius). Has an effect only when `type` is set to *circle*.
                        var radius: Double?
                    
                    }
                    /// 
                    var circle: Circle?
                
                    /// Sets the coordinates array contains [longitude, latitude] pairs for the image corners listed in clockwise order: top left, top right, bottom right, bottom left. Only has an effect for *image* `sourcetype`.
                    var coordinates: Anything?
                
                    /// Sets the minimum zoom level (mapbox.layer.minzoom). At zoom levels less than the minzoom, the layer will be hidden.
                    var minzoom: Double?
                
                    /// Sets the source type for this layer, that is the type of the layer data.
                    enum Sourcetype: String, Encodable {
                        case geojson
                        case vector
                        case raster
                        case image
                    }
                    /// Sets the source type for this layer, that is the type of the layer data.
                    var sourcetype: Sourcetype?
                
                    /// Sets the layer type, that is the how the layer data set in `source` will be rendered With `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill* and *symbol*. but note that *line* and *fill* are not compatible with Point GeoJSON geometries. With `sourcetype` set to *vector*, the following values are allowed:  *circle*, *line*, *fill* and *symbol*. With `sourcetype` set to *raster* or `*image*`, only the *raster* value is allowed.
                    enum AxisType: String, Encodable {
                        case circle
                        case line
                        case fill
                        case symbol
                        case raster
                    }
                    /// Sets the layer type, that is the how the layer data set in `source` will be rendered With `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill* and *symbol*. but note that *line* and *fill* are not compatible with Point GeoJSON geometries. With `sourcetype` set to *vector*, the following values are allowed:  *circle*, *line*, *fill* and *symbol*. With `sourcetype` set to *raster* or `*image*`, only the *raster* value is allowed.
                    var type: AxisType?
                
                    /// Sets the maximum zoom level (mapbox.layer.maxzoom). At zoom levels equal to or greater than the maxzoom, the layer will be hidden.
                    var maxzoom: Double?
                
                }
                /// 
                var layer: Layer?
            
            }
            /// 
            var items: Items?
        
        }
        /// 
        var layers: Layers?
    
        /// Sets the mapbox access token to be used for this mapbox map. Alternatively, the mapbox access token can be set in the configuration options under `mapboxAccessToken`. Note that accessToken are only required when `style` (e.g with values : basic, streets, outdoors, light, dark, satellite, satellite-streets ) and/or a layout layer references the Mapbox server.
        var accesstoken: String?
    
        /// 
        struct Center: Encodable {
            /// Sets the longitude of the center of the map (in degrees East).
            var lon: Double?
        
            /// Sets the latitude of the center of the map (in degrees North).
            var lat: Double?
        
        }
        /// 
        var center: Center?
    
        /// Defines the map layers that are rendered by default below the trace layers defined in `data`, which are themselves by default rendered below the layers defined in `layout.mapbox.layers`.  These layers can be defined either explicitly as a Mapbox Style object which can contain multiple layer definitions that load data from any public or private Tile Map Service (TMS or XYZ) or Web Map Service (WMS) or implicitly by using one of the built-in style objects which use WMSes which do not require any access tokens, or by using a default Mapbox style or custom Mapbox style URL, both of which require a Mapbox access token  Note that Mapbox access token can be set in the `accesstoken` attribute or in the `mapboxAccessToken` config option.  Mapbox Style objects are of the form described in the Mapbox GL JS documentation available at https://docs.mapbox.com/mapbox-gl-js/style-spec  The built-in plotly.js styles objects are: open-street-map, white-bg, carto-positron, carto-darkmatter, stamen-terrain, stamen-toner, stamen-watercolor  The built-in Mapbox styles are: basic, streets, outdoors, light, dark, satellite, satellite-streets  Mapbox style URLs are of the form: mapbox://mapbox.mapbox-<name>-<version>
        var style: Anything?
    
        /// Sets the zoom level of the map (mapbox.zoom).
        var zoom: Double?
    
        /// Sets the pitch angle of the map (in degrees, where *0* means perpendicular to the surface of the map) (mapbox.pitch).
        var pitch: Double?
    
        /// Controls persistence of user-driven changes in the view: `center`, `zoom`, `bearing`, `pitch`. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// Sets the bearing angle of the map in degrees counter-clockwise from North (mapbox.bearing).
        var bearing: Double?
    
    }
    /// 
    var mapbox: Mapbox?

    /// Sets the plot's width (in px).
    var width: Double?

    /// Determines the mode of hover interactions. If `clickmode` includes the *select* flag, `hovermode` defaults to *closest*. If `clickmode` lacks the *select* flag, it defaults to *x* or *y* (depending on the trace's `orientation` value) for plots based on cartesian coordinates. For anything else the default value is *closest*.
    enum Hovermode: String, Encodable {
        case x
        case y
        case closest
        case no
    }
    /// Determines the mode of hover interactions. If `clickmode` includes the *select* flag, `hovermode` defaults to *closest*. If `clickmode` lacks the *select* flag, it defaults to *x* or *y* (depending on the trace's `orientation` value) for plots based on cartesian coordinates. For anything else the default value is *closest*.
    var hovermode: Hovermode?

    /// 
    struct Images: Encodable {
        /// 
        struct Items: Encodable {
            /// 
            struct Image: Encodable {
                /// Sets the image container size horizontally. The image will be sized based on the `position` value. When `xref` is set to `paper`, units are sized relative to the plot width.
                var sizex: Double?
            
                /// Specifies whether images are drawn below or above traces. When `xref` and `yref` are both set to `paper`, image is drawn below the entire plot area.
                enum Layer: String, Encodable {
                    case below
                    case above
                }
                /// Specifies whether images are drawn below or above traces. When `xref` and `yref` are both set to `paper`, image is drawn below the entire plot area.
                var layer: Layer?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                var name: String?
            
                /// Specifies which dimension of the image to constrain.
                enum Sizing: String, Encodable {
                    case fill
                    case contain
                    case stretch
                }
                /// Specifies which dimension of the image to constrain.
                var sizing: Sizing?
            
                /// Sets the opacity of the image.
                var opacity: Double?
            
                /// Sets the image's x position. When `xref` is set to `paper`, units are sized relative to the plot height. See `xref` for more info
                var x: Anything?
            
                /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                var templateitemname: String?
            
                /// Sets the images's x coordinate axis. If set to a x axis id (e.g. *x* or *x2*), the `x` position refers to an x data coordinate If set to *paper*, the `x` position refers to the distance from the left of plot in normalized coordinates where *0* (*1*) corresponds to the left (right).
                enum Xref: String, Encodable {
                    case paper
                    case xxx
                }
                /// Sets the images's x coordinate axis. If set to a x axis id (e.g. *x* or *x2*), the `x` position refers to an x data coordinate If set to *paper*, the `x` position refers to the distance from the left of plot in normalized coordinates where *0* (*1*) corresponds to the left (right).
                var xref: Xref?
            
                /// Sets the anchor for the y position.
                enum Yanchor: String, Encodable {
                    case top
                    case middle
                    case bottom
                }
                /// Sets the anchor for the y position.
                var yanchor: Yanchor?
            
                /// Specifies the URL of the image to be used. The URL must be accessible from the domain where the plot code is run, and can be either relative or absolute.
                var source: String?
            
                /// Sets the image's y position. When `yref` is set to `paper`, units are sized relative to the plot height. See `yref` for more info
                var y: Anything?
            
                /// Determines whether or not this image is visible.
                var visible: Bool?
            
                /// Sets the anchor for the x position
                enum Xanchor: String, Encodable {
                    case left
                    case center
                    case right
                }
                /// Sets the anchor for the x position
                var xanchor: Xanchor?
            
                /// Sets the image container size vertically. The image will be sized based on the `position` value. When `yref` is set to `paper`, units are sized relative to the plot height.
                var sizey: Double?
            
                /// Sets the images's y coordinate axis. If set to a y axis id (e.g. *y* or *y2*), the `y` position refers to a y data coordinate. If set to *paper*, the `y` position refers to the distance from the bottom of the plot in normalized coordinates where *0* (*1*) corresponds to the bottom (top).
                enum Yref: String, Encodable {
                    case paper
                    case yyy
                }
                /// Sets the images's y coordinate axis. If set to a y axis id (e.g. *y* or *y2*), the `y` position refers to a y data coordinate. If set to *paper*, the `y` position refers to the distance from the bottom of the plot in normalized coordinates where *0* (*1*) corresponds to the bottom (top).
                var yref: Yref?
            
            }
            /// 
            var image: Image?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var images: Images?

    /// Used to allow user interactions with the plot to persist after `Plotly.react` calls that are unaware of these interactions. If `uirevision` is omitted, or if it is given and it changed from the previous `Plotly.react` call, the exact new figure is used. If `uirevision` is truthy and did NOT change, any attribute that has been affected by user interactions and did not receive a different value in the new figure will keep the interaction value. `layout.uirevision` attribute serves as the default for `uirevision` attributes in various sub-containers. For finer control you can set these sub-attributes directly. For example, if your app separately controls the data on the x and y axes you might set `xaxis.uirevision=*time*` and `yaxis.uirevision=*cost*`. Then if only the y data is changed, you can update `yaxis.uirevision=*quantity*` and the y axis range will reset but the x axis range will retain any user-driven zoom.
    var uirevision: Anything?

    /// 
    struct Yaxis: Encodable {
        /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
        var dtick: Anything?
    
        /// Sets the width (in px) of the axis line.
        var linewidth: Double?
    
        /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
        var showgrid: Bool?
    
        /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
        enum Tickmode: String, Encodable {
            case auto
            case linear
            case array
        }
        /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
        var tickmode: Tickmode?
    
        /// Sets the tick font.
        struct Tickfont: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var color: Color?
        
            /// 
            var size: Double?
        
        }
        /// Sets the tick font.
        var tickfont: Tickfont?
    
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*, ticks and grid lines are drawn half a category to the left/bottom of labels.
        enum Tickson: String, Encodable {
            case labels
            case boundaries
        }
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*, ticks and grid lines are drawn half a category to the left/bottom of labels.
        var tickson: Tickson?
    
        /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
        var visible: Bool?
    
        /// Same as `showtickprefix` but for tick suffixes.
        enum Showticksuffix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// Same as `showtickprefix` but for tick suffixes.
        var showticksuffix: Showticksuffix?
    
        /// Sets the tick width (in px).
        var tickwidth: Double?
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        var dividerwidth: Double?
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in `editable: true` configuration. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        enum Side: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        var side: Side?
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale ratio. For example, if this value is 10, then every unit on this axis spans 10 times the number of pixels as a unit on the linked axis. Use this for example to create an elevation profile where the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        var scaleratio: Double?
    
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        enum AxisType: String, Encodable {
            case auto
            case linear
            case log
            case date
            case category
            case multicategory
        }
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        var type: AxisType?
    
        /// Determines whether or not a line bounding this axis is drawn.
        var showline: Bool?
    
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        enum Showtickprefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        var showtickprefix: Showtickprefix?
    
        /// If "true", even 4-digit integers are separated
        var separatethousands: Bool?
    
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        enum Showexponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        var showexponent: Showexponent?
    
        /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
        enum Layer: String, Encodable {
            case abovetraces
            case belowtraces
        }
        /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
        var layer: Layer?
    
        /// Sets the tick length (in px).
        var ticklen: Double?
    
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
        enum Categoryorder: String, Encodable {
            case trace
            case categoryascending
            case categorydescending
            case array
            case totalascending
            case totaldescending
            case minascending
            case mindescending
            case maxascending
            case maxdescending
            case sumascending
            case sumdescending
            case meanascending
            case meandescending
            case medianascending
            case mediandescending
        }
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
        var categoryorder: Categoryorder?
    
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        enum Mirror: String, Encodable {
            case yes
            case ticks
            case no
            case all
            case allticks
        }
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        var mirror: Mirror?
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates). Only has an effect if `anchor` is set to *free*.
        var position: Double?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
        enum Rangemode: String, Encodable {
            case normal
            case tozero
            case nonnegative
        }
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
        var rangemode: Rangemode?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default), and *bottom* for y axes.
        enum Constraintoward: String, Encodable {
            case left
            case center
            case right
            case top
            case middle
            case bottom
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default), and *bottom* for y axes.
        var constraintoward: Constraintoward?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
        var color: Color?
    
        /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
        var range: InfoArray?
    
        /// Determines whether or not the tick labels are drawn.
        var showticklabels: Bool?
    
        /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
        var tickangle: Angle?
    
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis will match the range of the corresponding axis in data-coordinates space. Moreover, matching axes share auto-range values, category lists and histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden. Moreover, note that matching axes must have the same `type`.
        enum Matches: String, Encodable {
            case xxx
            case yyy
        }
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis will match the range of the corresponding axis in data-coordinates space. Moreover, matching axes share auto-range values, category lists and histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden. Moreover, note that matching axes must have the same `type`.
        var matches: Matches?
    
        /// If set to an opposite-letter axis id (e.g. `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this axis' position is determined by `position`.
        enum Anchor: String, Encodable {
            case free
            case xxx
            case yyy
        }
        /// If set to an opposite-letter axis id (e.g. `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this axis' position is determined by `position`.
        var anchor: Anchor?
    
        /// Sets the tick color.
        var tickcolor: Color?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        enum Constrain: String, Encodable {
            case range
            case domain
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        var constrain: Constrain?
    
        /// Determines whether long tick labels automatically grow the figure margins.
        var automargin: Bool?
    
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. If *false*, this axis does not overlay any same-letter axes. In this case, for axes with overlapping domains only the highest-numbered axis will be visible.
        enum Overlaying: String, Encodable {
            case free
            case xxx
            case yyy
        }
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. If *false*, this axis does not overlay any same-letter axes. In this case, for axes with overlapping domains only the highest-numbered axis will be visible.
        var overlaying: Overlaying?
    
        /// Sets a tick label prefix.
        var tickprefix: String?
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        var hoverformat: String?
    
        /// Sets a tick label suffix.
        var ticksuffix: String?
    
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
        enum Calendar: String, Encodable {
            case gregorian
            case chinese
            case coptic
            case discworld
            case ethiopian
            case hebrew
            case islamic
            case julian
            case mayan
            case nanakshahi
            case nepali
            case persian
            case jalali
            case taiwan
            case thai
            case ummalqura
        }
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
        var calendar: Calendar?
    
        /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        enum Exponentformat: String, Encodable {
            case none
            case e
            case E
            case power
            case SI
            case B
        }
        /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        var exponentformat: Exponentformat?
    
        /// Sets the source reference on plot.ly for  tickvals .
        var tickvalssrc: String?
    
        /// Sets the spike color. If undefined, will use the series color
        var spikecolor: Color?
    
        /// Sets the line color of the zero line.
        var zerolinecolor: Color?
    
        /// Sets the width (in px) of the zero line.
        var spikethickness: Double?
    
        /// 
        struct Title: Encodable {
            /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            struct Font: Encodable {
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var size: Double?
            
            }
            /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            var font: Font?
        
            /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
            var text: String?
        
            /// Sets the standoff distance (in px) between the axis labels and the title text The default value is a function of the axis tick labels, the title `font.size` and the axis `linewidth`. Note that the axis title position is always constrained within the margins, so the actual standoff distance is always less than the set or default value. By setting `standoff` and turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff distance.
            var standoff: Double?
        
        }
        /// 
        var title: Title?
    
        /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
        enum Ticks: String, Encodable {
            case outside
            case inside
            case none
        }
        /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
        var ticks: Ticks?
    
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis changes together with the range of the corresponding axis such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain` and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis: {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`. The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}` or longer) are redundant and the last constraint encountered will be ignored to avoid possible inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden.
        enum Scaleanchor: String, Encodable {
            case xxx
            case yyy
        }
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis changes together with the range of the corresponding axis such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain` and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis: {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`. The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}` or longer) are redundant and the last constraint encountered will be ignored to avoid possible inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden.
        var scaleanchor: Scaleanchor?
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis. Only has an effect on *multicategory* axes.
        var showdividers: Bool?
    
        /// Sets the axis line color.
        var linecolor: Color?
    
        /// 
        struct Tickformatstops: Encodable {
            /// 
            struct Items: Encodable {
                /// 
                struct Tickformatstop: Encodable {
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    var value: String?
                
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                    var templateitemname: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                    var enabled: Bool?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    var dtickrange: InfoArray?
                
                }
                /// 
                var tickformatstop: Tickformatstop?
            
            }
            /// 
            var items: Items?
        
        }
        /// 
        var tickformatstops: Tickformatstops?
    
        /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
        var nticks: Int?
    
        /// Sets the color of the grid lines.
        var gridcolor: Color?
    
        /// 
        struct _Deprecated: Encodable {
            /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
            struct Titlefont: Encodable {
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
            var titlefont: Titlefont?
        
            /// Obsolete. Set `tickmode` to *auto* for old `autotick` *true* behavior. Set `tickmode` to *linear* for `autotick` *false*.
            var autotick: Bool?
        
            /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
            var title: String?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// Sets the width (in px) of the grid lines.
        var gridwidth: Double?
    
        /// Sets the domain of this axis (in plot fraction).
        var domain: InfoArray?
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        var dividercolor: Color?
    
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If *marker*, then a marker dot is drawn on the axis the series is plotted on
        struct Spikemode: OptionSet, Encodable {
            let rawValue: Int
        
            static let toaxis = Spikemode(rawValue: 1 << 0)
            static let across = Spikemode(rawValue: 1 << 1)
            static let marker = Spikemode(rawValue: 1 << 2)
        
            init(rawValue: Int) { self.rawValue = rawValue }
        
            func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If *marker*, then a marker dot is drawn on the axis the series is plotted on
        var spikemode: Spikemode?
    
        /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        var tickvals: [Double]?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        enum Autorange: String, Encodable {
            case yes
            case no
            case reversed
        }
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        var autorange: Autorange?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        var categoryarraysrc: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        var ticktextsrc: String?
    
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        enum Spikesnap: String, Encodable {
            case data
            case cursor
        }
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        var spikesnap: Spikesnap?
    
        /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
        var tick0: Anything?
    
        /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        var ticktext: [Double]?
    
        /// Sets the width (in px) of the zero line.
        var zerolinewidth: Double?
    
        /// Sets the dash style of lines. Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a dash length list in px (eg *5px,10px,2px,2px*).
        var spikedash: String?
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis. If *true*, the zero line is drawn on top of the grid lines.
        var zeroline: Bool?
    
        /// Determines whether or not this axis is zoom-able. If true, then zoom is disabled.
        var fixedrange: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        var tickformat: String?
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis. Note: This only takes affect when hovermode = closest
        var showspikes: Bool?
    
        /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        var categoryarray: [Double]?
    
    }
    /// 
    var yaxis: Yaxis?

    /// 
    struct _Deprecated: Encodable {
        /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the contents of the title, please use `title.text` now.
        var title: String?
    
        /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
        struct Titlefont: Encodable {
            /// 
            var size: Double?
        
            /// 
            var color: Color?
        
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
        }
        /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
        var titlefont: Titlefont?
    
    }
    /// 
    var _deprecated: _Deprecated?

    /// Sets the global font. Note that fonts used in traces and other layout components inherit from the global font.
    struct Font: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        var family: String?
    
        /// 
        var size: Double?
    
        /// 
        var color: Color?
    
    }
    /// Sets the global font. Note that fonts used in traces and other layout components inherit from the global font.
    var font: Font?

    /// Sets transition options used during Plotly.react updates.
    struct Transition: Encodable {
        /// The easing function used for the transition
        enum Easing: String, Encodable {
            case linear
            case quad
            case cubic
            case sin
            case exp
            case circle
            case elastic
            case back
            case bounce
            case linearin
            case quadin
            case cubicin
            case sinin
            case expin
            case circlein
            case elasticin
            case backin
            case bouncein
            case linearout
            case quadout
            case cubicout
            case sinout
            case expout
            case circleout
            case elasticout
            case backout
            case bounceout
            case linearinout
            case quadinout
            case cubicinout
            case sininout
            case expinout
            case circleinout
            case elasticinout
            case backinout
            case bounceinout
        }
        /// The easing function used for the transition
        var easing: Easing?
    
        /// The duration of the transition, in milliseconds. If equal to zero, updates are synchronous.
        var duration: Double?
    
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make both traces and layout change.
        enum Ordering: String, Encodable {
            case layoutfirst
            case tracesfirst
        }
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make both traces and layout change.
        var ordering: Ordering?
    
    }
    /// Sets transition options used during Plotly.react updates.
    var transition: Transition?

    /// Controls persistence of user-driven changes in selected points from all traces.
    var selectionrevision: Anything?

    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal, vertical or diagonal. "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no limit.
    enum Selectdirection: String, Encodable {
        case h
        case v
        case d
        case any
    }
    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal, vertical or diagonal. "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no limit.
    var selectdirection: Selectdirection?

    /// 
    struct Radialaxis: Encodable {
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Determines whether or not the line bounding this radial axis will be shown on the figure.
        var showline: Bool?
    
        /// Polar chart subplots are not supported yet. This key has currently no effect.
        var domain: InfoArray?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the orientation (from the paper perspective) of the radial axis tick labels.
        enum Tickorientation: String, Encodable {
            case horizontal
            case vertical
        }
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the orientation (from the paper perspective) of the radial axis tick labels.
        var tickorientation: Tickorientation?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the length of the tick lines on this radial axis.
        var ticksuffix: String?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the color of the tick lines on this radial axis.
        var tickcolor: Color?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Defines the start and end point of this radial axis.
        var range: InfoArray?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Determines whether or not the radial axis ticks will feature tick labels.
        var showticklabels: Bool?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots.
        var endpadding: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Determines whether or not this axis will be visible.
        var visible: Bool?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the orientation (an angle with respect to the origin) of the radial axis.
        var orientation: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the length of the tick lines on this radial axis.
        var ticklen: Double?
    
    }
    /// 
    var radialaxis: Radialaxis?

    /// 
    struct Geo: Encodable {
        /// 
        struct Domain: Encodable {
            /// Sets the vertical domain of this geo subplot (in plot fraction). Note that geo subplots are constrained by domain. In general, when `projection.scale` is set to 1. a map will fit either its x or y domain, but not both.
            var y: InfoArray?
        
            /// Sets the horizontal domain of this geo subplot (in plot fraction). Note that geo subplots are constrained by domain. In general, when `projection.scale` is set to 1. a map will fit either its x or y domain, but not both.
            var x: InfoArray?
        
            /// If there is a layout grid, use the domain for this column in the grid for this geo subplot . Note that geo subplots are constrained by domain. In general, when `projection.scale` is set to 1. a map will fit either its x or y domain, but not both.
            var column: Int?
        
            /// If there is a layout grid, use the domain for this row in the grid for this geo subplot . Note that geo subplots are constrained by domain. In general, when `projection.scale` is set to 1. a map will fit either its x or y domain, but not both.
            var row: Int?
        
        }
        /// 
        var domain: Domain?
    
        /// Sets whether or not oceans are filled in color.
        var showocean: Bool?
    
        /// Sets the coastline color.
        var coastlinecolor: Color?
    
        /// Sets whether or not the coastlines are drawn.
        var showcoastlines: Bool?
    
        /// Controls persistence of user-driven changes in the view (projection and center). Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// Sets line color of the country boundaries.
        var countrycolor: Color?
    
        /// Sets color of the rivers.
        var rivercolor: Color?
    
        /// 
        struct Lonaxis: Encodable {
            /// Sets the graticule's longitude/latitude tick step.
            var dtick: Double?
        
            /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            var range: InfoArray?
        
            /// Sets whether or not graticule are shown on the map.
            var showgrid: Bool?
        
            /// Sets the graticule's stroke color.
            var gridcolor: Color?
        
            /// Sets the graticule's starting tick longitude/latitude.
            var tick0: Double?
        
            /// Sets the graticule's stroke width (in px).
            var gridwidth: Double?
        
        }
        /// 
        var lonaxis: Lonaxis?
    
        /// Sets the resolution of the base layers. The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        enum Resolution: Int, Encodable {
            case oneOver110M = 110
            case oneOver50M = 50
        }
        /// Sets the resolution of the base layers. The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        var resolution: Resolution?
    
        /// Sets line width (in px) of the country boundaries.
        var countrywidth: Double?
    
        /// 
        struct Lataxis: Encodable {
            /// Sets the graticule's stroke width (in px).
            var gridwidth: Double?
        
            /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            var range: InfoArray?
        
            /// Sets the graticule's stroke color.
            var gridcolor: Color?
        
            /// Sets whether or not graticule are shown on the map.
            var showgrid: Bool?
        
            /// Sets the graticule's starting tick longitude/latitude.
            var tick0: Double?
        
            /// Sets the graticule's longitude/latitude tick step.
            var dtick: Double?
        
        }
        /// 
        var lataxis: Lataxis?
    
        /// Sets the stroke width (in px) of the frame.
        var framewidth: Double?
    
        /// Sets the ocean color
        var oceancolor: Color?
    
        /// Sets whether or not country boundaries are drawn.
        var showcountries: Bool?
    
        /// Sets the color the frame.
        var framecolor: Color?
    
        /// Sets the land mass color.
        var landcolor: Color?
    
        /// Sets the stroke width (in px) of the rivers.
        var riverwidth: Double?
    
        /// Sets whether or not boundaries of subunits within countries (e.g. states, provinces) are drawn.
        var showsubunits: Bool?
    
        /// Sets the color of the lakes.
        var lakecolor: Color?
    
        /// Sets whether or not rivers are drawn.
        var showrivers: Bool?
    
        /// Set the scope of the map.
        enum Scope: String, Encodable {
            case world
            case usa
            case europe
            case asia
            case africa
            case northamerica
            case southamerica
        }
        /// Set the scope of the map.
        var scope: Scope?
    
        /// Sets whether or not a frame is drawn around the map.
        var showframe: Bool?
    
        /// Sets the color of the subunits boundaries.
        var subunitcolor: Color?
    
        /// Sets whether or not land masses are filled in color.
        var showland: Bool?
    
        /// Sets whether or not lakes are drawn.
        var showlakes: Bool?
    
        /// 
        struct Projection: Encodable {
            /// Sets the projection type.
            enum AxisType: String, Encodable {
                case equirectangular
                case mercator
                case orthographic
                case naturalearth
                case kavrayskiy7
                case miller
                case robinson
                case eckert4
                case azimuthalequalarea
                case azimuthalequidistant
                case conicequalarea
                case conicconformal
                case conicequidistant
                case gnomonic
                case stereographic
                case mollweide
                case hammer
                case transversemercator
                case albersusa
                case winkeltripel
                case aitoff
                case sinusoidal
            }
            /// Sets the projection type.
            var type: AxisType?
        
            /// Zooms in or out on the map view. A scale of *1* corresponds to the largest zoom level that fits the map's lon and lat ranges. 
            var scale: Double?
        
            /// 
            struct Rotation: Encodable {
                /// Rotates the map along parallels (in degrees East). Defaults to the center of the `lonaxis.range` values.
                var lon: Double?
            
                /// Roll the map (in degrees) For example, a roll of *180* makes the map appear upside down.
                var roll: Double?
            
                /// Rotates the map along meridians (in degrees North).
                var lat: Double?
            
            }
            /// 
            var rotation: Rotation?
        
            /// For conic projection types only. Sets the parallels (tangent, secant) where the cone intersects the sphere.
            var parallels: InfoArray?
        
        }
        /// 
        var projection: Projection?
    
        /// Sets the stroke width (in px) of the subunits boundaries.
        var subunitwidth: Double?
    
        /// 
        struct Center: Encodable {
            /// Sets the latitude of the map's center. For all projection types, the map's latitude center lies at the middle of the latitude range by default.
            var lat: Double?
        
            /// Sets the longitude of the map's center. By default, the map's longitude center lies at the middle of the longitude range for scoped projection and above `projection.rotation.lon` otherwise.
            var lon: Double?
        
        }
        /// 
        var center: Center?
    
        /// Sets the coastline stroke width (in px).
        var coastlinewidth: Double?
    
        /// Set the background color of the map
        var bgcolor: Color?
    
    }
    /// 
    var geo: Geo?

    /// Sets the default distance (in pixels) to look for data to add hover labels (-1 means no cutoff, 0 means no looking for data). This is only a real distance for hovering on point-like objects, like scatter points. For area-like objects (bars, scatter fills, etc) hovering is on inside the area and off outside, but these objects will not supersede hover on point-like objects in case of conflict.
    var hoverdistance: Int?

    /// Determines whether or not a text link citing the data source is placed at the bottom-right cored of the figure. Has only an effect only on graphs that have been generated via forked graphs from the plotly service (at https://plot.ly or on-premise).
    var hidesources: Bool?

    /// Sets the color of paper where the graph is drawn.
    var paper_bgcolor: Color?

    /// Controls persistence of user-driven changes in `editable: true` configuration, other than trace names and axis titles. Defaults to `layout.uirevision`.
    var editrevision: Anything?

    /// Sets the default calendar system to use for interpreting and displaying dates throughout the plot.
    enum Calendar: String, Encodable {
        case gregorian
        case chinese
        case coptic
        case discworld
        case ethiopian
        case hebrew
        case islamic
        case julian
        case mayan
        case nanakshahi
        case nepali
        case persian
        case jalali
        case taiwan
        case thai
        case ummalqura
    }
    /// Sets the default calendar system to use for interpreting and displaying dates throughout the plot.
    var calendar: Calendar?

    /// 
    struct Hoverlabel: Encodable {
        /// Sets the border color of all hover labels on graph.
        var bordercolor: Color?
    
        /// Sets the default hover label font used by all traces on the graph.
        struct Font: Encodable {
            /// 
            var color: Color?
        
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var size: Double?
        
        }
        /// Sets the default hover label font used by all traces on the graph.
        var font: Font?
    
        /// Sets the background color of all hover labels on graph
        var bgcolor: Color?
    
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
    
    }
    /// 
    var hoverlabel: Hoverlabel?

    /// 
    struct Angularaxis: Encodable {
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the orientation (from the paper perspective) of the angular axis tick labels.
        enum Tickorientation: String, Encodable {
            case horizontal
            case vertical
        }
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the orientation (from the paper perspective) of the angular axis tick labels.
        var tickorientation: Tickorientation?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Defines the start and end point of this angular axis.
        var range: InfoArray?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the length of the tick lines on this angular axis.
        var ticksuffix: String?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Determines whether or not this axis will be visible.
        var visible: Bool?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the color of the tick lines on this angular axis.
        var tickcolor: Color?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the length of the tick lines on this angular axis.
        var ticklen: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots.
        var endpadding: Double?
    
        /// Polar chart subplots are not supported yet. This key has currently no effect.
        var domain: InfoArray?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Determines whether or not the angular axis ticks will feature tick labels.
        var showticklabels: Bool?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Determines whether or not the line bounding this angular axis will be shown on the figure.
        var showline: Bool?
    
    }
    /// 
    var angularaxis: Angularaxis?

    /// Sets the plot's height (in px).
    var height: Double?

    /// 
    struct Coloraxis: Encodable {
        /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. Value should have the same units as corresponding trace color array(s). Has no effect when `cauto` is `false`.
        var cmid: Double?
    
        /// Sets the upper bound of the color domain. Value should have the same units as corresponding trace color array(s) and if set, `cmin` must be set as well.
        var cmax: Double?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. In case `colorscale` is unspecified or `autocolorscale` is true, the default  palette will be chosen according to whether numbers in the `color` array are all positive, all negative or mixed.
        var autocolorscale: Bool?
    
        /// Reverses the color mapping if true. If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the first color.
        var reversescale: Bool?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here corresponding trace color array(s)) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
        var cauto: Bool?
    
        /// Sets the lower bound of the color domain. Value should have the same units as corresponding trace color array(s) and if set, `cmax` must be set as well.
        var cmin: Double?
    
        /// Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        var colorscale: ColorScale?
    
        /// 
        struct Colorbar: Encodable {
            /// Sets the color bar's tick label font
            struct Tickfont: Encodable {
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var size: Double?
            
            }
            /// Sets the color bar's tick label font
            var tickfont: Tickfont?
        
            /// Sets the x position of the color bar (in plot fraction).
            var x: Double?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.
            var len: Double?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            enum Xanchor: String, Encodable {
                case left
                case center
                case right
            }
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            var xanchor: Xanchor?
        
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            enum Lenmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            var lenmode: Lenmode?
        
            /// Sets the width (in px) or the border enclosing this color bar.
            var borderwidth: Double?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Sets the width (in px) of the axis line.
            var outlinewidth: Double?
        
            /// Sets the axis line color.
            var outlinecolor: Color?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets the color of padded area.
            var bgcolor: Color?
        
            /// Sets the amount of padding (in px) along the x direction.
            var xpad: Double?
        
            /// Sets the axis line color.
            var bordercolor: Color?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets the y position of the color bar (in plot fraction).
            var y: Double?
        
            /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
            var thickness: Double?
        
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            enum Yanchor: String, Encodable {
                case top
                case middle
                case bottom
            }
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            var yanchor: Yanchor?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            enum Thicknessmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            var thicknessmode: Thicknessmode?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// 
            struct Title: Encodable {
                /// Sets the title of the color bar. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
                /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                }
                /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                var font: Font?
            
                /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
                enum Side: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
                var side: Side?
            
            }
            /// 
            var title: Title?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets the amount of padding (in px) along the y direction.
            var ypad: Double?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// 
            struct _Deprecated: Encodable {
                /// Deprecated in favor of color bar's `title.font`.
                struct Titlefont: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                }
                /// Deprecated in favor of color bar's `title.font`.
                var titlefont: Titlefont?
            
                /// Deprecated in favor of color bar's `title.text`. Note that value of color bar's `title` is no longer a simple *string* but a set of sub-attributes.
                var title: String?
            
                /// Deprecated in favor of color bar's `title.side`.
                enum Titleside: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Deprecated in favor of color bar's `title.side`.
                var titleside: Titleside?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
        }
        /// 
        var colorbar: Colorbar?
    
        /// Determines whether or not a colorbar is displayed for this trace.
        var showscale: Bool?
    
    }
    /// 
    var coloraxis: Coloraxis?

    /// 
    struct Polar: Encodable {
        /// 
        struct Domain: Encodable {
            /// Sets the horizontal domain of this polar subplot (in plot fraction).
            var x: InfoArray?
        
            /// If there is a layout grid, use the domain for this row in the grid for this polar subplot .
            var row: Int?
        
            /// Sets the vertical domain of this polar subplot (in plot fraction).
            var y: InfoArray?
        
            /// If there is a layout grid, use the domain for this column in the grid for this polar subplot .
            var column: Int?
        
        }
        /// 
        var domain: Domain?
    
        /// Sets angular span of this polar subplot with two angles (in degrees). Sector are assumed to be spanned in the counterclockwise direction with *0* corresponding to rightmost limit of the polar subplot.
        var sector: InfoArray?
    
        /// Controls persistence of user-driven changes in axis attributes, if not overridden in the individual axes. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// 
        struct Radialaxis: Encodable {
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. If *normal*, the range is computed in relation to the extrema of the input data (same behavior as for cartesian axes).
            enum Rangemode: String, Encodable {
                case tozero
                case nonnegative
                case normal
            }
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. If *normal*, the range is computed in relation to the extrema of the input data (same behavior as for cartesian axes).
            var rangemode: Rangemode?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            enum Categoryorder: String, Encodable {
                case trace
                case categoryascending
                case categorydescending
                case array
                case totalascending
                case totaldescending
                case minascending
                case mindescending
                case maxascending
                case maxdescending
                case sumascending
                case sumdescending
                case meanascending
                case meandescending
                case medianascending
                case mediandescending
            }
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            var categoryorder: Categoryorder?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            var categoryarray: [Double]?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// 
            struct _Deprecated: Encodable {
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            enum AxisType: String, Encodable {
                case auto
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            var type: AxisType?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            enum Calendar: String, Encodable {
                case gregorian
                case chinese
                case coptic
                case discworld
                case ethiopian
                case hebrew
                case islamic
                case julian
                case mayan
                case nanakshahi
                case nepali
                case persian
                case jalali
                case taiwan
                case thai
                case ummalqura
            }
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            var calendar: Calendar?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            enum Layer: String, Encodable {
                case abovetraces
                case belowtraces
            }
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            var layer: Layer?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
            var visible: Bool?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var size: Double?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
            var range: InfoArray?
        
            /// Determines on which side of radial axis line the tick and tick labels appear.
            enum Side: String, Encodable {
                case clockwise
                case counterclockwise
            }
            /// Determines on which side of radial axis line the tick and tick labels appear.
            var side: Side?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// 
            struct Title: Encodable {
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
            }
            /// 
            var title: Title?
        
            /// Controls persistence of user-driven changes in axis `range`, `autorange`, `angle`, and `title` if in `editable: true` configuration. Defaults to `polar<N>.uirevision`.
            var uirevision: Anything?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            var categoryarraysrc: String?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Sets the angle (in degrees) from which the radial axis is drawn. Note that by default, radial axis line on the theta=0 line corresponds to a line pointing right (like what mathematicians prefer). Defaults to the first `polar.sector` angle.
            var angle: Angle?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            enum Autorange: String, Encodable {
                case yes
                case no
                case reversed
            }
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            var autorange: Autorange?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
        }
        /// 
        var radialaxis: Radialaxis?
    
        /// 
        struct Angularaxis: Encodable {
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Set the angular period. Has an effect only when `angularaxis.type` is *category*.
            var period: Double?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Sets the angular axis type. If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category, use `period` to set the number of integer coordinates around polar axis.
            enum AxisType: String, Encodable {
                case auto
                case linear
                case category
            }
            /// Sets the angular axis type. If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category, use `period` to set the number of integer coordinates around polar axis.
            var type: AxisType?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            var categoryarray: [Double]?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            var categoryarraysrc: String?
        
            /// Sets that start position (in degrees) of the angular axis By default, polar subplots with `direction` set to *counterclockwise* get a `rotation` of *0* which corresponds to due East (like what mathematicians prefer). In turn, polar with `direction` set to *clockwise* get a rotation of *90* which corresponds to due North (like on a compass),
            var rotation: Angle?
        
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            enum Categoryorder: String, Encodable {
                case trace
                case categoryascending
                case categorydescending
                case array
                case totalascending
                case totaldescending
                case minascending
                case mindescending
                case maxascending
                case maxdescending
                case sumascending
                case sumdescending
                case meanascending
                case meandescending
                case medianascending
                case mediandescending
            }
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            var categoryorder: Categoryorder?
        
            /// Controls persistence of user-driven changes in axis `rotation`. Defaults to `polar<N>.uirevision`.
            var uirevision: Anything?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            enum Layer: String, Encodable {
                case abovetraces
                case belowtraces
            }
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            var layer: Layer?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets the direction corresponding to positive angles.
            enum Direction: String, Encodable {
                case counterclockwise
                case clockwise
            }
            /// Sets the direction corresponding to positive angles.
            var direction: Direction?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
            var visible: Bool?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets the format unit of the formatted *theta* values. Has an effect only when `angularaxis.type` is *linear*.
            enum Thetaunit: String, Encodable {
                case radians
                case degrees
            }
            /// Sets the format unit of the formatted *theta* values. Has an effect only when `angularaxis.type` is *linear*.
            var thetaunit: Thetaunit?
        
        }
        /// 
        var angularaxis: Angularaxis?
    
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors or as *linear* (polygon) sectors. Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis scale is the same as the data scale).
        enum Gridshape: String, Encodable {
            case circular
            case linear
        }
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors or as *linear* (polygon) sectors. Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis scale is the same as the data scale).
        var gridshape: Gridshape?
    
        /// Sets the fraction of the radius to cut out of the polar subplot.
        var hole: Double?
    
        /// Set the background color of the subplot
        var bgcolor: Color?
    
    }
    /// 
    var polar: Polar?

    /// 
    struct Sliders: Encodable {
        /// 
        struct Items: Encodable {
            /// 
            struct Slider: Encodable {
                /// Sets the length in pixels of minor step tick marks
                var minorticklen: Double?
            
                /// Sets the color of the border enclosing the slider.
                var tickcolor: Color?
            
                /// Set the padding of the slider component along each side.
                struct Pad: Encodable {
                    /// The amount of padding (in px) on the left side of the component.
                    var l: Double?
                
                    /// The amount of padding (in px) along the bottom of the component.
                    var b: Double?
                
                    /// The amount of padding (in px) on the right side of the component.
                    var r: Double?
                
                    /// The amount of padding (in px) along the top of the component.
                    var t: Double?
                
                }
                /// Set the padding of the slider component along each side.
                var pad: Pad?
            
                /// Sets the tick width (in px).
                var tickwidth: Double?
            
                /// Sets the slider's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
                enum Xanchor: String, Encodable {
                    case auto
                    case left
                    case center
                    case right
                }
                /// Sets the slider's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
                var xanchor: Xanchor?
            
                /// Sets the width (in px) of the border enclosing the slider.
                var borderwidth: Double?
            
                /// 
                struct Transition: Encodable {
                    /// Sets the easing function of the slider transition
                    enum Easing: String, Encodable {
                        case linear
                        case quad
                        case cubic
                        case sin
                        case exp
                        case circle
                        case elastic
                        case back
                        case bounce
                        case linearin
                        case quadin
                        case cubicin
                        case sinin
                        case expin
                        case circlein
                        case elasticin
                        case backin
                        case bouncein
                        case linearout
                        case quadout
                        case cubicout
                        case sinout
                        case expout
                        case circleout
                        case elasticout
                        case backout
                        case bounceout
                        case linearinout
                        case quadinout
                        case cubicinout
                        case sininout
                        case expinout
                        case circleinout
                        case elasticinout
                        case backinout
                        case bounceinout
                    }
                    /// Sets the easing function of the slider transition
                    var easing: Easing?
                
                    /// Sets the duration of the slider transition
                    var duration: Double?
                
                }
                /// 
                var transition: Transition?
            
                /// Sets the color of the border enclosing the slider.
                var bordercolor: Color?
            
                /// Sets the font of the slider step labels.
                struct Font: Encodable {
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                }
                /// Sets the font of the slider step labels.
                var font: Font?
            
                /// Sets the background color of the slider grip while dragging.
                var activebgcolor: Color?
            
                /// 
                struct Currentvalue: Encodable {
                    /// When currentvalue.visible is true, this sets the prefix of the label.
                    var prefix: String?
                
                    /// When currentvalue.visible is true, this sets the suffix of the label.
                    var suffix: String?
                
                    /// The alignment of the value readout relative to the length of the slider.
                    enum Xanchor: String, Encodable {
                        case left
                        case center
                        case right
                    }
                    /// The alignment of the value readout relative to the length of the slider.
                    var xanchor: Xanchor?
                
                    /// Shows the currently-selected value above the slider.
                    var visible: Bool?
                
                    /// Sets the font of the current value label text.
                    struct Font: Encodable {
                        /// 
                        var size: Double?
                    
                        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                        var family: String?
                    
                        /// 
                        var color: Color?
                    
                    }
                    /// Sets the font of the current value label text.
                    var font: Font?
                
                    /// The amount of space, in pixels, between the current value label and the slider.
                    var offset: Double?
                
                }
                /// 
                var currentvalue: Currentvalue?
            
                /// Determines whether or not the slider is visible.
                var visible: Bool?
            
                /// Sets the x position (in normalized coordinates) of the slider.
                var x: Double?
            
                /// Sets the slider's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
                enum Yanchor: String, Encodable {
                    case auto
                    case top
                    case middle
                    case bottom
                }
                /// Sets the slider's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
                var yanchor: Yanchor?
            
                /// Sets the length of the slider This measure excludes the padding of both ends. That is, the slider's length is this length minus the padding on both ends.
                var len: Double?
            
                /// Sets the background color of the slider.
                var bgcolor: Color?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                var name: String?
            
                /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                var templateitemname: String?
            
                /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
                enum Lenmode: String, Encodable {
                    case fraction
                    case pixels
                }
                /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
                var lenmode: Lenmode?
            
                /// Sets the length in pixels of step tick marks
                var ticklen: Double?
            
                /// 
                struct Steps: Encodable {
                    /// 
                    struct Items: Encodable {
                        /// 
                        struct Step: Encodable {
                            /// When true, the API method is executed. When false, all other behaviors are the same and command execution is skipped. This may be useful when hooking into, for example, the `plotly_sliderchange` method and executing the API command manually without losing the benefit of the slider automatically binding to the state of the plot through the specification of `method` and `args`.
                            var execute: Bool?
                        
                            /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                            var templateitemname: String?
                        
                            /// Sets the text label to appear on the slider
                            var label: String?
                        
                            /// Sets the value of the slider step, used to refer to the step programatically. Defaults to the slider label if not provided.
                            var value: String?
                        
                            /// Sets the Plotly method to be called when the slider value is changed. If the `skip` method is used, the API slider will function as normal but will perform no API calls and will not bind automatically to state updates. This may be used to create a component interface and attach to slider events manually via JavaScript.
                            enum Method: String, Encodable {
                                case restyle
                                case relayout
                                case animate
                                case update
                                case skip
                            }
                            /// Sets the Plotly method to be called when the slider value is changed. If the `skip` method is used, the API slider will function as normal but will perform no API calls and will not bind automatically to state updates. This may be used to create a component interface and attach to slider events manually via JavaScript.
                            var method: Method?
                        
                            /// Determines whether or not this step is included in the slider.
                            var visible: Bool?
                        
                            /// Sets the arguments values to be passed to the Plotly method set in `method` on slide.
                            var args: InfoArray?
                        
                            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                            var name: String?
                        
                        }
                        /// 
                        var step: Step?
                    
                    }
                    /// 
                    var items: Items?
                
                }
                /// 
                var steps: Steps?
            
                /// Sets the y position (in normalized coordinates) of the slider.
                var y: Double?
            
                /// Determines which button (by index starting from 0) is considered active.
                var active: Double?
            
            }
            /// 
            var slider: Slider?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var sliders: Sliders?

    /// 
    struct Colorscale: Encodable {
        /// Sets the default sequential colorscale for negative values. Note that `autocolorscale` must be true for this attribute to work.
        var sequentialminus: ColorScale?
    
        /// Sets the default diverging colorscale. Note that `autocolorscale` must be true for this attribute to work.
        var diverging: ColorScale?
    
        /// Sets the default sequential colorscale for positive values. Note that `autocolorscale` must be true for this attribute to work.
        var sequential: ColorScale?
    
    }
    /// 
    var colorscale: Colorscale?

    /// 
    struct Legend: Encodable {
        /// Sets the width (in px) of the border enclosing the legend.
        var borderwidth: Double?
    
        /// Controls persistence of legend-driven changes in trace and pie label visibility. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// Sets the font used to text the legend items.
        struct Font: Encodable {
            /// 
            var size: Double?
        
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var color: Color?
        
        }
        /// Sets the font used to text the legend items.
        var font: Font?
    
        /// Determines the behavior on legend item double-click. *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the clicked item the sole visible item on the graph. *false* disable legend item double-click interactions.
        enum Itemdoubleclick: String, Encodable {
            case toggle
            case toggleothers
            case no
        }
        /// Determines the behavior on legend item double-click. *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the clicked item the sole visible item on the graph. *false* disable legend item double-click interactions.
        var itemdoubleclick: Itemdoubleclick?
    
        /// Sets the y position (in normalized coordinates) of the legend. Defaults to *1* for vertical legends, defaults to *-0.1* for horizontal legends on graphs w/o range sliders and defaults to *1.1* for horizontal legends on graph with one or multiple range sliders.
        var y: Double?
    
        /// Sets the amount of vertical space (in px) between legend groups.
        var tracegroupgap: Double?
    
        /// Sets the color of the border enclosing the legend.
        var bordercolor: Color?
    
        /// Sets the legend's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the legend. Value *auto* anchors legends at their bottom for `y` values less than or equal to 1/3, anchors legends to at their top for `y` values greater than or equal to 2/3 and anchors legends with respect to their middle otherwise.
        enum Yanchor: String, Encodable {
            case auto
            case top
            case middle
            case bottom
        }
        /// Sets the legend's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the legend. Value *auto* anchors legends at their bottom for `y` values less than or equal to 1/3, anchors legends to at their top for `y` values greater than or equal to 2/3 and anchors legends with respect to their middle otherwise.
        var yanchor: Yanchor?
    
        /// Sets the orientation of the legend.
        enum Orientation: String, Encodable {
            case v
            case h
        }
        /// Sets the orientation of the legend.
        var orientation: Orientation?
    
        /// Sets the vertical alignment of the symbols with respect to their associated text.
        enum Valign: String, Encodable {
            case top
            case middle
            case bottom
        }
        /// Sets the vertical alignment of the symbols with respect to their associated text.
        var valign: Valign?
    
        /// Determines the order at which the legend items are displayed. If *normal*, the items are displayed top-to-bottom in the same order as the input data. If *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the items are displayed in the opposite order as *grouped*.
        struct Traceorder: OptionSet, Encodable {
            let rawValue: Int
        
            static let reversed = Traceorder(rawValue: 1 << 0)
            static let grouped = Traceorder(rawValue: 1 << 1)
        
            init(rawValue: Int) { self.rawValue = rawValue }
        
            func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["reversed"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["grouped"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the order at which the legend items are displayed. If *normal*, the items are displayed top-to-bottom in the same order as the input data. If *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the items are displayed in the opposite order as *grouped*.
        var traceorder: Traceorder?
    
        /// Determines the behavior on legend item click. *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the clicked item the sole visible item on the graph. *false* disable legend item click interactions.
        enum Itemclick: String, Encodable {
            case toggle
            case toggleothers
            case no
        }
        /// Determines the behavior on legend item click. *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the clicked item the sole visible item on the graph. *false* disable legend item click interactions.
        var itemclick: Itemclick?
    
        /// Sets the legend's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the legend. Value *auto* anchors legends to the right for `x` values greater than or equal to 2/3, anchors legends to the left for `x` values less than or equal to 1/3 and anchors legends with respect to their center otherwise.
        enum Xanchor: String, Encodable {
            case auto
            case left
            case center
            case right
        }
        /// Sets the legend's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the legend. Value *auto* anchors legends to the right for `x` values greater than or equal to 2/3, anchors legends to the left for `x` values less than or equal to 1/3 and anchors legends with respect to their center otherwise.
        var xanchor: Xanchor?
    
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or remain *constant* independent of the symbol size on the graph.
        enum Itemsizing: String, Encodable {
            case trace
            case constant
        }
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or remain *constant* independent of the symbol size on the graph.
        var itemsizing: Itemsizing?
    
        /// Sets the legend background color.
        var bgcolor: Color?
    
        /// Sets the x position (in normalized coordinates) of the legend. Defaults to *1.02* for vertical legends and defaults to *0* for horizontal legends.
        var x: Double?
    
    }
    /// 
    var legend: Legend?

    /// Determines whether or not a layout width or height that has been left undefined by the user is initialized on each relayout. Note that, regardless of this attribute, an undefined layout width or height is always initialized on the first call to plot.
    var autosize: Bool?

    /// Determines the mode of single click interactions. *event* is the default value and emits the `plotly_click` event. In addition this mode emits the `plotly_selected` event in drag modes *lasso* and *select*, but with no event data attached (kept for compatibility reasons). The *select* flag enables selecting single data points via click. This mode also supports persistent selections, meaning that pressing Shift while clicking, adds to / subtracts from an existing selection. *select* with `hovermode`: *x* can be confusing, consider explicitly setting `hovermode`: *closest* when using this feature. Selection events are sent accordingly as long as *event* flag is set as well. When the *event* flag is missing, `plotly_click` and `plotly_selected` events are not fired.
    struct Clickmode: OptionSet, Encodable {
        let rawValue: Int
    
        static let event = Clickmode(rawValue: 1 << 0)
        static let select = Clickmode(rawValue: 1 << 1)
    
        init(rawValue: Int) { self.rawValue = rawValue }
    
        func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["event"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["select"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines the mode of single click interactions. *event* is the default value and emits the `plotly_click` event. In addition this mode emits the `plotly_selected` event in drag modes *lasso* and *select*, but with no event data attached (kept for compatibility reasons). The *select* flag enables selecting single data points via click. This mode also supports persistent selections, meaning that pressing Shift while clicking, adds to / subtracts from an existing selection. *select* with `hovermode`: *x* can be confusing, consider explicitly setting `hovermode`: *closest* when using this feature. Selection events are sent accordingly as long as *event* flag is set as well. When the *event* flag is missing, `plotly_click` and `plotly_selected` events are not fired.
    var clickmode: Clickmode?

    /// 
    struct Ternary: Encodable {
        /// Set the background color of the subplot
        var bgcolor: Color?
    
        /// 
        struct Caxis: Encodable {
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// 
            struct _Deprecated: Encodable {
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            enum Layer: String, Encodable {
                case abovetraces
                case belowtraces
            }
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            var layer: Layer?
        
            /// 
            struct Title: Encodable {
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
            }
            /// 
            var title: Title?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// The minimum value visible on this axis. The maximum is determined by the sum minus the minimum values of the other two axes. The full view corresponds to all the minima set to zero.
            var min: Double?
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. Defaults to `ternary<N>.uirevision`.
            var uirevision: Anything?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
        }
        /// 
        var caxis: Caxis?
    
        /// 
        struct Aaxis: Encodable {
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// The minimum value visible on this axis. The maximum is determined by the sum minus the minimum values of the other two axes. The full view corresponds to all the minima set to zero.
            var min: Double?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// 
                var size: Double?
            
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// 
            struct _Deprecated: Encodable {
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            enum Layer: String, Encodable {
                case abovetraces
                case belowtraces
            }
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            var layer: Layer?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// 
            struct Title: Encodable {
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
            }
            /// 
            var title: Title?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. Defaults to `ternary<N>.uirevision`.
            var uirevision: Anything?
        
        }
        /// 
        var aaxis: Aaxis?
    
        /// 
        struct Baxis: Encodable {
            /// The minimum value visible on this axis. The maximum is determined by the sum minus the minimum values of the other two axes. The full view corresponds to all the minima set to zero.
            var min: Double?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// 
            struct _Deprecated: Encodable {
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            enum Layer: String, Encodable {
                case abovetraces
                case belowtraces
            }
            /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
            var layer: Layer?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// 
            struct Title: Encodable {
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
            }
            /// 
            var title: Title?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. Defaults to `ternary<N>.uirevision`.
            var uirevision: Anything?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
        }
        /// 
        var baxis: Baxis?
    
        /// 
        struct Domain: Encodable {
            /// Sets the vertical domain of this ternary subplot (in plot fraction).
            var y: InfoArray?
        
            /// Sets the horizontal domain of this ternary subplot (in plot fraction).
            var x: InfoArray?
        
            /// If there is a layout grid, use the domain for this column in the grid for this ternary subplot .
            var column: Int?
        
            /// If there is a layout grid, use the domain for this row in the grid for this ternary subplot .
            var row: Int?
        
        }
        /// 
        var domain: Domain?
    
        /// The number each triplet should sum to, and the maximum range of each axis
        var sum: Double?
    
        /// Controls persistence of user-driven changes in axis `min` and `title`, if not overridden in the individual axes. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
    }
    /// 
    var ternary: Ternary?

    /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Rotates the entire polar by the given angle in legacy polar charts.
    var orientation: Angle?

    /// 
    struct Annotations: Encodable {
        /// 
        struct Items: Encodable {
            /// 
            struct Annotation: Encodable {
                /// Sets an explicit width for the text box. null (default) lets the text set the box width. Wider text will be clipped. There is no automatic wrapping; use <br> to start a new line.
                var width: Double?
            
                /// Sets the vertical alignment of the `text` within the box. Has an effect only if an explicit height is set to override the text height.
                enum Valign: String, Encodable {
                    case top
                    case middle
                    case bottom
                }
                /// Sets the vertical alignment of the `text` within the box. Has an effect only if an explicit height is set to override the text height.
                var valign: Valign?
            
                /// Sets text to appear when hovering over this annotation. If omitted or blank, no hover label will appear.
                var hovertext: String?
            
                /// Sets the annotation's x position. If the axis `type` is *log*, then you must take the log of your desired range. If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
                var x: Anything?
            
                /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                var templateitemname: String?
            
                /// Sets the color of the annotation arrow.
                var arrowcolor: Color?
            
                /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. If `pixel`, `ax` is a relative offset in pixels  from `x`. If set to an x axis id (e.g. *x* or *x2*), `ax` is  specified in the same terms as that axis. This is useful  for trendline annotations which should continue to indicate  the correct trend when zoomed.
                enum Axref: String, Encodable {
                    case pixel
                    case xxx
                }
                /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. If `pixel`, `ax` is a relative offset in pixels  from `x`. If set to an x axis id (e.g. *x* or *x2*), `ax` is  specified in the same terms as that axis. This is useful  for trendline annotations which should continue to indicate  the correct trend when zoomed.
                var axref: Axref?
            
                /// Determines whether or not this annotation is visible.
                var visible: Bool?
            
                /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` / `yshift` which moves everything by this amount.
                var standoff: Double?
            
                /// Makes this annotation respond to clicks on the plot. If you click a data point that exactly matches the `x` and `y` values of this annotation, and it is hidden (visible: false), it will appear. In *onoff* mode, you must click the same point again to make it disappear, so if you click multiple points, you can show multiple annotations. In *onout* mode, a click anywhere else in the plot (on another data point or not) will hide this annotation. If you need to show/hide this annotation in response to different `x` or `y` values, you can set `xclick` and/or `yclick`. This is useful for example to label the side of a bar. To label markers though, `standoff` is preferred over `xclick` and `yclick`.
                enum Clicktoshow: String, Encodable {
                    case no
                    case onoff
                    case onout
                }
                /// Makes this annotation respond to clicks on the plot. If you click a data point that exactly matches the `x` and `y` values of this annotation, and it is hidden (visible: false), it will appear. In *onoff* mode, you must click the same point again to make it disappear, so if you click multiple points, you can show multiple annotations. In *onout* mode, a click anywhere else in the plot (on another data point or not) will hide this annotation. If you need to show/hide this annotation in response to different `x` or `y` values, you can set `xclick` and/or `yclick`. This is useful for example to label the side of a bar. To label markers though, `standoff` is preferred over `xclick` and `yclick`.
                var clicktoshow: Clicktoshow?
            
                /// Determines whether the annotation text box captures mouse move and click events, or allows those events to pass through to data points in the plot that may be behind the annotation. By default `captureevents` is *false* unless `hovertext` is provided. If you use the event `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
                var captureevents: Bool?
            
                /// Toggle this annotation when clicking a data point whose `y` value is `yclick` rather than the annotation's `y` value.
                var yclick: Anything?
            
                /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
                enum Align: String, Encodable {
                    case left
                    case center
                    case right
                }
                /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
                var align: Align?
            
                /// Sets the y component of the arrow tail about the arrow head. If `ayref` is `pixel`, a positive (negative)  component corresponds to an arrow pointing from bottom to top (top to bottom). If `ayref` is an axis, this is an absolute value on that axis, like `y`, NOT a relative value.
                var ay: Anything?
            
                /// Sets the annotation text font.
                struct Font: Encodable {
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                }
                /// Sets the annotation text font.
                var font: Font?
            
                /// Toggle this annotation when clicking a data point whose `x` value is `xclick` rather than the annotation's `x` value.
                var xclick: Anything?
            
                /// Determines whether or not the annotation is drawn with an arrow. If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and `y` provided.
                var showarrow: Bool?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                var name: String?
            
                /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*, *center* or *right* of the annotation. For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the anchor is equivalent to *center* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                enum Xanchor: String, Encodable {
                    case auto
                    case left
                    case center
                    case right
                }
                /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*, *center* or *right* of the annotation. For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the anchor is equivalent to *center* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                var xanchor: Xanchor?
            
                /// 
                struct _Deprecated: Encodable {
                    /// Obsolete. Set `xref` and `yref` separately instead.
                    var ref: String?
                
                }
                /// 
                var _deprecated: _Deprecated?
            
                /// Sets the padding (in px) between the `text` and the enclosing border.
                var borderpad: Double?
            
                /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this many pixels.
                var yshift: Double?
            
                /// Sets the opacity of the annotation (text + arrow).
                var opacity: Double?
            
                /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative) by this many pixels.
                var xshift: Double?
            
                /// Sets the width (in px) of annotation arrow line.
                var arrowwidth: Double?
            
                /// 
                struct Hoverlabel: Encodable {
                    /// Sets the background color of the hover label. By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
                    var bgcolor: Color?
                
                    /// Sets the hover label text font. By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
                    struct Font: Encodable {
                        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                        var family: String?
                    
                        /// 
                        var size: Double?
                    
                        /// 
                        var color: Color?
                    
                    }
                    /// Sets the hover label text font. By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
                    var font: Font?
                
                    /// Sets the border color of the hover label. By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
                    var bordercolor: Color?
                
                }
                /// 
                var hoverlabel: Hoverlabel?
            
                /// Sets an explicit height for the text box. null (default) lets the text set the box height. Taller text will be clipped.
                var height: Double?
            
                /// Sets the start annotation arrow head style.
                var startarrowhead: Int?
            
                /// Sets the annotation's y coordinate axis. If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to *paper*, the `y` position refers to the distance from the bottom of the plotting area in normalized coordinates where 0 (1) corresponds to the bottom (top).
                enum Yref: String, Encodable {
                    case paper
                    case yyy
                }
                /// Sets the annotation's y coordinate axis. If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to *paper*, the `y` position refers to the distance from the bottom of the plotting area in normalized coordinates where 0 (1) corresponds to the bottom (top).
                var yref: Yref?
            
                /// Sets the angle at which the `text` is drawn with respect to the horizontal.
                var textangle: Angle?
            
                /// Sets the annotation's x coordinate axis. If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate If set to *paper*, the `x` position refers to the distance from the left side of the plotting area in normalized coordinates where 0 (1) corresponds to the left (right) side.
                enum Xref: String, Encodable {
                    case paper
                    case xxx
                }
                /// Sets the annotation's x coordinate axis. If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate If set to *paper*, the `x` position refers to the distance from the left side of the plotting area in normalized coordinates where 0 (1) corresponds to the left (right) side.
                var xref: Xref?
            
                /// Sets the color of the border enclosing the annotation `text`.
                var bordercolor: Color?
            
                /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` / `yshift` which moves everything by this amount.
                var startstandoff: Double?
            
                /// Sets the size of the start annotation arrow head, relative to `arrowwidth`. A value of 1 (default) gives a head about 3x as wide as the line.
                var startarrowsize: Double?
            
                /// Sets the size of the end annotation arrow head, relative to `arrowwidth`. A value of 1 (default) gives a head about 3x as wide as the line.
                var arrowsize: Double?
            
                /// Sets the end annotation arrow head style.
                var arrowhead: Int?
            
                /// Sets the width (in px) of the border enclosing the annotation `text`.
                var borderwidth: Double?
            
                /// Sets the annotation's y position. If the axis `type` is *log*, then you must take the log of your desired range. If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
                var y: Anything?
            
                /// Sets the annotation arrow head position.
                struct Arrowside: OptionSet, Encodable {
                    let rawValue: Int
                
                    static let end = Arrowside(rawValue: 1 << 0)
                    static let start = Arrowside(rawValue: 1 << 1)
                
                    init(rawValue: Int) { self.rawValue = rawValue }
                
                    func encode(to encoder: Encoder) throws {
                        var options = [String]()
                        if (self.rawValue & 1 << 0) != 0 { options += ["end"] }
                        if (self.rawValue & 1 << 1) != 0 { options += ["start"] }
                        var container = encoder.singleValueContainer()
                        try container.encode(options.joined(separator: "+"))
                    }
                }
                /// Sets the annotation arrow head position.
                var arrowside: Arrowside?
            
                /// Sets the x component of the arrow tail about the arrow head. If `axref` is `pixel`, a positive (negative)  component corresponds to an arrow pointing from right to left (left to right). If `axref` is an axis, this is an absolute value on that axis, like `x`, NOT a relative value.
                var ax: Anything?
            
                /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. If `pixel`, `ay` is a relative offset in pixels  from `y`. If set to a y axis id (e.g. *y* or *y2*), `ay` is  specified in the same terms as that axis. This is useful  for trendline annotations which should continue to indicate  the correct trend when zoomed.
                enum Ayref: String, Encodable {
                    case pixel
                    case yyy
                }
                /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. If `pixel`, `ay` is a relative offset in pixels  from `y`. If set to a y axis id (e.g. *y* or *y2*), `ay` is  specified in the same terms as that axis. This is useful  for trendline annotations which should continue to indicate  the correct trend when zoomed.
                var ayref: Ayref?
            
                /// Sets the text associated with this annotation. Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
                var text: String?
            
                /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the annotation. For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                enum Yanchor: String, Encodable {
                    case auto
                    case top
                    case middle
                    case bottom
                }
                /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the annotation. For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                var yanchor: Yanchor?
            
                /// Sets the background color of the annotation.
                var bgcolor: Color?
            
            }
            /// 
            var annotation: Annotation?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var annotations: Annotations?

    /// Sets the source reference on plot.ly for  meta .
    var metasrc: String?

    /// 
    struct Shapes: Encodable {
        /// 
        struct Items: Encodable {
            /// 
            struct Shape: Encodable {
                /// Only relevant in conjunction with `xsizemode` set to *pixel*. Specifies the anchor point on the x axis to which `x0`, `x1` and x coordinates within `path` are relative to. E.g. useful to attach a pixel sized shape to a certain data value. No effect when `xsizemode` not set to *pixel*.
                var xanchor: Anything?
            
                /// Sets the shape's end x position. See `type` and `xsizemode` for more info.
                var x1: Anything?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                var name: String?
            
                /// Specifies whether shapes are drawn below or above traces.
                enum Layer: String, Encodable {
                    case below
                    case above
                }
                /// Specifies whether shapes are drawn below or above traces.
                var layer: Layer?
            
                /// Only relevant in conjunction with `ysizemode` set to *pixel*. Specifies the anchor point on the y axis to which `y0`, `y1` and y coordinates within `path` are relative to. E.g. useful to attach a pixel sized shape to a certain data value. No effect when `ysizemode` not set to *pixel*.
                var yanchor: Anything?
            
                /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                var templateitemname: String?
            
                /// Sets the shapes's sizing mode along the y axis. If set to *scaled*, `y0`, `y1` and y coordinates within `path` refer to data values on the y axis or a fraction of the plot area's height (`yref` set to *paper*). If set to *pixel*, `yanchor` specifies the y position in terms of data or plot fraction but `y0`, `y1` and y coordinates within `path` are pixels relative to `yanchor`. This way, the shape can have a fixed height while maintaining a position relative to data or plot fraction.
                enum Ysizemode: String, Encodable {
                    case scaled
                    case pixel
                }
                /// Sets the shapes's sizing mode along the y axis. If set to *scaled*, `y0`, `y1` and y coordinates within `path` refer to data values on the y axis or a fraction of the plot area's height (`yref` set to *paper*). If set to *pixel*, `yanchor` specifies the y position in terms of data or plot fraction but `y0`, `y1` and y coordinates within `path` are pixels relative to `yanchor`. This way, the shape can have a fixed height while maintaining a position relative to data or plot fraction.
                var ysizemode: Ysizemode?
            
                /// Sets the shape's starting x position. See `type` and `xsizemode` for more info.
                var x0: Anything?
            
                /// Sets the shape's starting y position. See `type` and `ysizemode` for more info.
                var y0: Anything?
            
                /// 
                struct Line: Encodable {
                    /// Sets the dash style of lines. Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a dash length list in px (eg *5px,10px,2px,2px*).
                    var dash: String?
                
                    /// Sets the line width (in px).
                    var width: Double?
                
                    /// Sets the line color.
                    var color: Color?
                
                }
                /// 
                var line: Line?
            
                /// Sets the color filling the shape's interior.
                var fillcolor: Color?
            
                /// Sets the shape's x coordinate axis. If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate. If set to *paper*, the `x` position refers to the distance from the left side of the plotting area in normalized coordinates where *0* (*1*) corresponds to the left (right) side. If the axis `type` is *log*, then you must take the log of your desired range. If the axis `type` is *date*, then you must convert the date to unix time in milliseconds.
                enum Xref: String, Encodable {
                    case paper
                    case xxx
                }
                /// Sets the shape's x coordinate axis. If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate. If set to *paper*, the `x` position refers to the distance from the left side of the plotting area in normalized coordinates where *0* (*1*) corresponds to the left (right) side. If the axis `type` is *log*, then you must take the log of your desired range. If the axis `type` is *date*, then you must convert the date to unix time in milliseconds.
                var xref: Xref?
            
                /// Specifies the shape type to be drawn. If *line*, a line is drawn from (`x0`,`y0`) to (`x1`,`y1`) with respect to the axes' sizing mode. If *circle*, a circle is drawn from ((`x0`+`x1`)/2, (`y0`+`y1`)/2)) with radius (|(`x0`+`x1`)/2 - `x0`|, |(`y0`+`y1`)/2 -`y0`)|) with respect to the axes' sizing mode. If *rect*, a rectangle is drawn linking (`x0`,`y0`), (`x1`,`y0`), (`x1`,`y1`), (`x0`,`y1`), (`x0`,`y0`) with respect to the axes' sizing mode. If *path*, draw a custom SVG path using `path`. with respect to the axes' sizing mode.
                enum AxisType: String, Encodable {
                    case circle
                    case rect
                    case path
                    case line
                }
                /// Specifies the shape type to be drawn. If *line*, a line is drawn from (`x0`,`y0`) to (`x1`,`y1`) with respect to the axes' sizing mode. If *circle*, a circle is drawn from ((`x0`+`x1`)/2, (`y0`+`y1`)/2)) with radius (|(`x0`+`x1`)/2 - `x0`|, |(`y0`+`y1`)/2 -`y0`)|) with respect to the axes' sizing mode. If *rect*, a rectangle is drawn linking (`x0`,`y0`), (`x1`,`y0`), (`x1`,`y1`), (`x0`,`y1`), (`x0`,`y0`) with respect to the axes' sizing mode. If *path*, draw a custom SVG path using `path`. with respect to the axes' sizing mode.
                var type: AxisType?
            
                /// Sets the opacity of the shape.
                var opacity: Double?
            
                /// Determines whether or not this shape is visible.
                var visible: Bool?
            
                /// Sets the annotation's y coordinate axis. If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to *paper*, the `y` position refers to the distance from the bottom of the plotting area in normalized coordinates where *0* (*1*) corresponds to the bottom (top).
                enum Yref: String, Encodable {
                    case paper
                    case yyy
                }
                /// Sets the annotation's y coordinate axis. If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to *paper*, the `y` position refers to the distance from the bottom of the plotting area in normalized coordinates where *0* (*1*) corresponds to the bottom (top).
                var yref: Yref?
            
                /// For `type` *path* - a valid SVG path with the pixel values replaced by data values in `xsizemode`/`ysizemode` being *scaled* and taken unmodified as pixels relative to `xanchor` and `yanchor` in case of *pixel* size mode. There are a few restrictions / quirks only absolute instructions, not relative. So the allowed segments are: M, L, H, V, Q, C, T, S, and Z arcs (A) are not allowed because radius rx and ry are relative. In the future we could consider supporting relative commands, but we would have to decide on how to handle date and log axes. Note that even as is, Q and C Bezier paths that are smooth on linear axes may not be smooth on log, and vice versa. no chained "polybezier" commands - specify the segment type for each one. On category axes, values are numbers scaled to the serial numbers of categories because using the categories themselves there would be no way to describe fractional positions On data axes: because space and T are both normal components of path strings, we can't use either to separate date from time parts. Therefore we'll use underscore for this purpose: 2015-02-21_13:45:56.789
                var path: String?
            
                /// Sets the shapes's sizing mode along the x axis. If set to *scaled*, `x0`, `x1` and x coordinates within `path` refer to data values on the x axis or a fraction of the plot area's width (`xref` set to *paper*). If set to *pixel*, `xanchor` specifies the x position in terms of data or plot fraction but `x0`, `x1` and x coordinates within `path` are pixels relative to `xanchor`. This way, the shape can have a fixed width while maintaining a position relative to data or plot fraction.
                enum Xsizemode: String, Encodable {
                    case scaled
                    case pixel
                }
                /// Sets the shapes's sizing mode along the x axis. If set to *scaled*, `x0`, `x1` and x coordinates within `path` refer to data values on the x axis or a fraction of the plot area's width (`xref` set to *paper*). If set to *pixel*, `xanchor` specifies the x position in terms of data or plot fraction but `x0`, `x1` and x coordinates within `path` are pixels relative to `xanchor`. This way, the shape can have a fixed width while maintaining a position relative to data or plot fraction.
                var xsizemode: Xsizemode?
            
                /// Sets the shape's end y position. See `type` and `ysizemode` for more info.
                var y1: Anything?
            
            }
            /// 
            var shape: Shape?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var shapes: Shapes?

    /// Default attributes to be applied to the plot. Templates can be created from existing plots using `Plotly.makeTemplate`, or created manually. They should be objects with format: `{layout: layoutTemplate, data: {[type]: [traceTemplate, ...]}, ...}` `layoutTemplate` and `traceTemplate` are objects matching the attribute structure of `layout` and a data trace.  Trace templates are applied cyclically to traces of each type. Container arrays (eg `annotations`) have special handling: An object ending in `defaults` (eg `annotationdefaults`) is applied to each array item. But if an item has a `templateitemname` key we look in the template array for an item with matching `name` and apply that instead. If no matching `name` is found we mark the item invisible. Any named template item not referenced is appended to the end of the array, so you can use this for a watermark annotation or a logo image, for example. To omit one of these items on the plot, make an item with matching `templateitemname` and `visible: false`.
    var template: Anything?

    /// 
    struct Grid: Encodable {
        /// Used with `yaxes` when the x and y axes are shared across columns and rows. Each entry should be an x axis id like *x*, *x2*, etc., or ** to not put an x axis in that column. Entries other than ** must be unique. Ignored if `subplots` is present. If missing but `yaxes` is present, will generate consecutive IDs.
        var xaxes: InfoArray?
    
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to right.
        enum Roworder: String, Encodable {
            case toptobottom
            case bottomtotop
        }
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to right.
        var roworder: Roworder?
    
        /// The number of rows in the grid. If you provide a 2D `subplots` array or a `yaxes` array, its length is used as the default. But it's also possible to have a different length, if you want to leave a row at the end for non-cartesian subplots.
        var rows: Int?
    
        /// Sets where the x axis labels and titles go. *bottom* means the very bottom of the grid. *bottom plot* is the lowest plot that each x axis is used in. *top* and *top plot* are similar.
        enum Xside: String, Encodable {
            case bottom
            case bottomplot
            case topplot
            case top
        }
        /// Sets where the x axis labels and titles go. *bottom* means the very bottom of the grid. *bottom plot* is the lowest plot that each x axis is used in. *top* and *top plot* are similar.
        var xside: Xside?
    
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column and one y axis per row. *independent* uses a new xy pair for each cell, left-to-right across each row then iterating rows according to `roworder`.
        enum Pattern: String, Encodable {
            case independent
            case coupled
        }
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column and one y axis per row. *independent* uses a new xy pair for each cell, left-to-right across each row then iterating rows according to `roworder`.
        var pattern: Pattern?
    
        /// Horizontal space between grid cells, expressed as a fraction of the total width available to one cell. Defaults to 0.1 for coupled-axes grids and 0.2 for independent grids.
        var xgap: Double?
    
        /// Used for freeform grids, where some axes may be shared across subplots but others are not. Each entry should be a cartesian subplot id, like *xy* or *x3y2*, or ** to leave that cell empty. You may reuse x axes within the same column, and y axes within the same row. Non-cartesian subplots and traces that support `domain` can place themselves in this grid separately using the `gridcell` attribute.
        var subplots: InfoArray?
    
        /// The number of columns in the grid. If you provide a 2D `subplots` array, the length of its longest row is used as the default. If you give an `xaxes` array, its length is used as the default. But it's also possible to have a different length, if you want to leave a row at the end for non-cartesian subplots.
        var columns: Int?
    
        /// 
        struct Domain: Encodable {
            /// Sets the vertical domain of this grid subplot (in plot fraction). The first and last cells end exactly at the domain edges, with no grout around the edges.
            var y: InfoArray?
        
            /// Sets the horizontal domain of this grid subplot (in plot fraction). The first and last cells end exactly at the domain edges, with no grout around the edges.
            var x: InfoArray?
        
        }
        /// 
        var domain: Domain?
    
        /// Sets where the y axis labels and titles go. *left* means the very left edge of the grid. *left plot* is the leftmost plot that each y axis is used in. *right* and *right plot* are similar.
        enum Yside: String, Encodable {
            case left
            case leftplot
            case rightplot
            case right
        }
        /// Sets where the y axis labels and titles go. *left* means the very left edge of the grid. *left plot* is the leftmost plot that each y axis is used in. *right* and *right plot* are similar.
        var yside: Yside?
    
        /// Vertical space between grid cells, expressed as a fraction of the total height available to one cell. Defaults to 0.1 for coupled-axes grids and 0.3 for independent grids.
        var ygap: Double?
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows. Each entry should be an y axis id like *y*, *y2*, etc., or ** to not put a y axis in that row. Entries other than ** must be unique. Ignored if `subplots` is present. If missing but `xaxes` is present, will generate consecutive IDs.
        var yaxes: InfoArray?
    
    }
    /// 
    var grid: Grid?

    /// Determines whether or not a legend is drawn. Default is `true` if there is a trace to show and any of these: a) Two or more traces would by default be shown in the legend. b) One pie trace is shown in the legend. c) One trace is explicitly given with `showlegend: true`.
    var showlegend: Bool?

    /// 
    struct Modebar: Encodable {
        /// Sets the color of the active or hovered on icons in the modebar.
        var activecolor: Color?
    
        /// Sets the color of the icons in the modebar.
        var color: Color?
    
        /// Controls persistence of user-driven changes related to the modebar, including `hovermode`, `dragmode`, and `showspikes` at both the root level and inside subplots. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// Sets the background color of the modebar.
        var bgcolor: Color?
    
        /// Sets the orientation of the modebar.
        enum Orientation: String, Encodable {
            case v
            case h
        }
        /// Sets the orientation of the modebar.
        var orientation: Orientation?
    
    }
    /// 
    var modebar: Modebar?

    /// 
    struct Updatemenus: Encodable {
        /// 
        struct Items: Encodable {
            /// 
            struct Updatemenu: Encodable {
                /// Sets the font of the update menu button text.
                struct Font: Encodable {
                    /// 
                    var color: Color?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                }
                /// Sets the font of the update menu button text.
                var font: Font?
            
                /// Determines whether the buttons are accessible via a dropdown menu or whether the buttons are stacked horizontally or vertically
                enum AxisType: String, Encodable {
                    case dropdown
                    case buttons
                }
                /// Determines whether the buttons are accessible via a dropdown menu or whether the buttons are stacked horizontally or vertically
                var type: AxisType?
            
                /// Sets the x position (in normalized coordinates) of the update menu.
                var x: Double?
            
                /// Determines which button (by index starting from 0) is considered active.
                var active: Int?
            
                /// Sets the color of the border enclosing the update menu.
                var bordercolor: Color?
            
                /// Sets the width (in px) of the border enclosing the update menu.
                var borderwidth: Double?
            
                /// 
                struct Buttons: Encodable {
                    /// 
                    struct Items: Encodable {
                        /// 
                        struct Button: Encodable {
                            /// Sets the arguments values to be passed to the Plotly method set in `method` on click.
                            var args: InfoArray?
                        
                            /// Sets the text label to appear on the button.
                            var label: String?
                        
                            /// Determines whether or not this button is visible.
                            var visible: Bool?
                        
                            /// Sets the Plotly method to be called on click. If the `skip` method is used, the API updatemenu will function as normal but will perform no API calls and will not bind automatically to state updates. This may be used to create a component interface and attach to updatemenu events manually via JavaScript.
                            enum Method: String, Encodable {
                                case restyle
                                case relayout
                                case animate
                                case update
                                case skip
                            }
                            /// Sets the Plotly method to be called on click. If the `skip` method is used, the API updatemenu will function as normal but will perform no API calls and will not bind automatically to state updates. This may be used to create a component interface and attach to updatemenu events manually via JavaScript.
                            var method: Method?
                        
                            /// Sets a 2nd set of `args`, these arguments values are passed to the Plotly method set in `method` when clicking this button while in the active state. Use this to create toggle buttons.
                            var args2: InfoArray?
                        
                            /// When true, the API method is executed. When false, all other behaviors are the same and command execution is skipped. This may be useful when hooking into, for example, the `plotly_buttonclicked` method and executing the API command manually without losing the benefit of the updatemenu automatically binding to the state of the plot through the specification of `method` and `args`.
                            var execute: Bool?
                        
                            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                            var name: String?
                        
                            /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                            var templateitemname: String?
                        
                        }
                        /// 
                        var button: Button?
                    
                    }
                    /// 
                    var items: Items?
                
                }
                /// 
                var buttons: Buttons?
            
                /// Determines the direction in which the buttons are laid out, whether in a dropdown menu or a row/column of buttons. For `left` and `up`, the buttons will still appear in left-to-right or top-to-bottom order respectively.
                enum Direction: String, Encodable {
                    case left
                    case right
                    case up
                    case down
                }
                /// Determines the direction in which the buttons are laid out, whether in a dropdown menu or a row/column of buttons. For `left` and `up`, the buttons will still appear in left-to-right or top-to-bottom order respectively.
                var direction: Direction?
            
                /// Sets the update menu's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
                enum Xanchor: String, Encodable {
                    case auto
                    case left
                    case center
                    case right
                }
                /// Sets the update menu's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
                var xanchor: Xanchor?
            
                /// Highlights active dropdown item or active button if true.
                var showactive: Bool?
            
                /// Sets the y position (in normalized coordinates) of the update menu.
                var y: Double?
            
                /// Sets the background color of the update menu buttons.
                var bgcolor: Color?
            
                /// Sets the update menu's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
                enum Yanchor: String, Encodable {
                    case auto
                    case top
                    case middle
                    case bottom
                }
                /// Sets the update menu's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
                var yanchor: Yanchor?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                var name: String?
            
                /// Determines whether or not the update menu is visible.
                var visible: Bool?
            
                /// Sets the padding around the buttons or dropdown menu.
                struct Pad: Encodable {
                    /// The amount of padding (in px) on the left side of the component.
                    var l: Double?
                
                    /// The amount of padding (in px) along the top of the component.
                    var t: Double?
                
                    /// The amount of padding (in px) along the bottom of the component.
                    var b: Double?
                
                    /// The amount of padding (in px) on the right side of the component.
                    var r: Double?
                
                }
                /// Sets the padding around the buttons or dropdown menu.
                var pad: Pad?
            
                /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                var templateitemname: String?
            
            }
            /// 
            var updatemenu: Updatemenu?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var updatemenus: Updatemenus?

    /// Assigns extra meta information that can be used in various `text` attributes. Attributes such as the graph, axis and colorbar `title.text`, annotation `text` `trace.name` in legend items, `rangeselector`, `updatemenus` and `sliders` `label` text all support `meta`. One can access `meta` fields using template strings: `%{meta[i]}` where `i` is the index of the `meta` item in question. `meta` can also be an object for example `{key: value}` which can be accessed %{meta[key]}.
    var meta: Anything?

    /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the direction corresponding to positive angles in legacy polar charts.
    enum Direction: String, Encodable {
        case clockwise
        case counterclockwise
    }
    /// Legacy polar charts are deprecated! Please switch to *polar* subplots. Sets the direction corresponding to positive angles in legacy polar charts.
    var direction: Direction?

    /// If provided, a changed value tells `Plotly.react` that one or more data arrays has changed. This way you can modify arrays in-place rather than making a complete new copy for an incremental change. If NOT provided, `Plotly.react` assumes that data arrays are being treated as immutable, thus any data array with a different identity from its predecessor contains new data.
    var datarevision: Anything?

    /// 
    struct Margin: Encodable {
        /// Sets the right margin (in px).
        var r: Double?
    
        /// Turns on/off margin expansion computations. Legends, colorbars, updatemenus, sliders, axis rangeselector and rangeslider are allowed to push the margins by defaults.
        var autoexpand: Bool?
    
        /// Sets the bottom margin (in px).
        var b: Double?
    
        /// Sets the top margin (in px).
        var t: Double?
    
        /// Sets the left margin (in px).
        var l: Double?
    
        /// Sets the amount of padding (in px) between the plotting area and the axis lines
        var pad: Double?
    
    }
    /// 
    var margin: Margin?

    /// 
    struct Title: Encodable {
        /// Sets the title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
        struct Font: Encodable {
            /// 
            var color: Color?
        
            /// 
            var size: Double?
        
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
        }
        /// Sets the title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
        var font: Font?
    
        /// Sets the title's vertical alignment with respect to its y position. *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y and *middle* means that the title's midline is at y. *auto* divides `yref` by three and calculates the `yanchor` value automatically based on the value of `y`.
        enum Yanchor: String, Encodable {
            case auto
            case top
            case middle
            case bottom
        }
        /// Sets the title's vertical alignment with respect to its y position. *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y and *middle* means that the title's midline is at y. *auto* divides `yref` by three and calculates the `yanchor` value automatically based on the value of `y`.
        var yanchor: Yanchor?
    
        /// Sets the container `x` refers to. *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting area only.
        enum Xref: String, Encodable {
            case container
            case paper
        }
        /// Sets the container `x` refers to. *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting area only.
        var xref: Xref?
    
        /// Sets the title's horizontal alignment with respect to its x position. *left* means that the title starts at x, *right* means that the title ends at x and *center* means that the title's center is at x. *auto* divides `xref` by three and calculates the `xanchor` value automatically based on the value of `x`.
        enum Xanchor: String, Encodable {
            case auto
            case left
            case center
            case right
        }
        /// Sets the title's horizontal alignment with respect to its x position. *left* means that the title starts at x, *right* means that the title ends at x and *center* means that the title's center is at x. *auto* divides `xref` by three and calculates the `xanchor` value automatically based on the value of `x`.
        var xanchor: Xanchor?
    
        /// Sets the padding of the title. Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the respective anchor value is *middle*/*center*.
        struct Pad: Encodable {
            /// The amount of padding (in px) on the left side of the component.
            var l: Double?
        
            /// The amount of padding (in px) on the right side of the component.
            var r: Double?
        
            /// The amount of padding (in px) along the top of the component.
            var t: Double?
        
            /// The amount of padding (in px) along the bottom of the component.
            var b: Double?
        
        }
        /// Sets the padding of the title. Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the respective anchor value is *middle*/*center*.
        var pad: Pad?
    
        /// Sets the x position with respect to `xref` in normalized coordinates from *0* (left) to *1* (right).
        var x: Double?
    
        /// Sets the plot's title. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
        var text: String?
    
        /// Sets the container `y` refers to. *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting area only.
        enum Yref: String, Encodable {
            case container
            case paper
        }
        /// Sets the container `y` refers to. *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting area only.
        var yref: Yref?
    
        /// Sets the y position with respect to `yref` in normalized coordinates from *0* (bottom) to *1* (top). *auto* places the baseline of the title onto the vertical center of the top margin.
        var y: Double?
    
    }
    /// 
    var title: Title?

    /// Sets the default distance (in pixels) to look for data to draw spikelines to (-1 means no cutoff, 0 means no looking for data). As with hoverdistance, distance does not apply to area-like objects. In addition, some objects can be hovered on but will not generate spikelines, such as scatter fills.
    var spikedistance: Int?

    /// 
    struct Scene: Encodable {
        /// 
        var bgcolor: Color?
    
        /// 
        struct Camera: Encodable {
            /// Sets the (x,y,z) components of the 'eye' camera vector. This vector determines the view point about the origin of this scene.
            struct Eye: Encodable {
                /// 
                var z: Double?
            
                /// 
                var y: Double?
            
                /// 
                var x: Double?
            
            }
            /// Sets the (x,y,z) components of the 'eye' camera vector. This vector determines the view point about the origin of this scene.
            var eye: Eye?
        
            /// 
            struct Projection: Encodable {
                /// Sets the projection type. The projection type could be either *perspective* or *orthographic*. The default is *perspective*.
                enum AxisType: String, Encodable {
                    case perspective
                    case orthographic
                }
                /// Sets the projection type. The projection type could be either *perspective* or *orthographic*. The default is *perspective*.
                var type: AxisType?
            
            }
            /// 
            var projection: Projection?
        
            /// Sets the (x,y,z) components of the 'center' camera vector This vector determines the translation (x,y,z) space about the center of this scene. By default, there is no such translation.
            struct Center: Encodable {
                /// 
                var y: Double?
            
                /// 
                var x: Double?
            
                /// 
                var z: Double?
            
            }
            /// Sets the (x,y,z) components of the 'center' camera vector This vector determines the translation (x,y,z) space about the center of this scene. By default, there is no such translation.
            var center: Center?
        
            /// Sets the (x,y,z) components of the 'up' camera vector. This vector determines the up direction of this scene with respect to the page. The default is *{x: 0, y: 0, z: 1}* which means that the z axis points up.
            struct Up: Encodable {
                /// 
                var z: Double?
            
                /// 
                var x: Double?
            
                /// 
                var y: Double?
            
            }
            /// Sets the (x,y,z) components of the 'up' camera vector. This vector determines the up direction of this scene with respect to the page. The default is *{x: 0, y: 0, z: 1}* which means that the z axis points up.
            var up: Up?
        
        }
        /// 
        var camera: Camera?
    
        /// 
        struct _Deprecated: Encodable {
            /// Obsolete. Use `camera` instead.
            var cameraposition: InfoArray?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// 
        struct Xaxis: Encodable {
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            enum Calendar: String, Encodable {
                case gregorian
                case chinese
                case coptic
                case discworld
                case ethiopian
                case hebrew
                case islamic
                case julian
                case mayan
                case nanakshahi
                case nepali
                case persian
                case jalali
                case taiwan
                case thai
                case ummalqura
            }
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            var calendar: Calendar?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// 
            struct _Deprecated: Encodable {
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets whether or not this axis' wall has a background color.
            var showbackground: Bool?
        
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            enum AxisType: String, Encodable {
                case auto
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            var type: AxisType?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
            enum Rangemode: String, Encodable {
                case normal
                case tozero
                case nonnegative
            }
            /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
            var rangemode: Rangemode?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets the thickness (in px) of the spikes.
            var spikethickness: Double?
        
            /// Sets the width (in px) of the zero line.
            var zerolinewidth: Double?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Sets whether or not this axis is labeled
            var showaxeslabels: Bool?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// 
            struct Title: Encodable {
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
            }
            /// 
            var title: Title?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
            var spikesides: Bool?
        
            /// Sets the color of the spikes.
            var spikecolor: Color?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Sets the line color of the zero line.
            var zerolinecolor: Color?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            var categoryarraysrc: String?
        
            /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            var categoryarray: [Double]?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            var showspikes: Bool?
        
            /// Sets the background color of this axis' wall.
            var backgroundcolor: Color?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            enum Autorange: String, Encodable {
                case yes
                case no
                case reversed
            }
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            var autorange: Autorange?
        
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            enum Categoryorder: String, Encodable {
                case trace
                case categoryascending
                case categorydescending
                case array
                case totalascending
                case totaldescending
                case minascending
                case mindescending
                case maxascending
                case maxdescending
                case sumascending
                case sumdescending
                case meanascending
                case meandescending
                case medianascending
                case mediandescending
            }
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            var categoryorder: Categoryorder?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis. If *true*, the zero line is drawn on top of the grid lines.
            var zeroline: Bool?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            enum Mirror: String, Encodable {
                case yes
                case ticks
                case no
                case all
                case allticks
            }
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            var mirror: Mirror?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
            var range: InfoArray?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
            var visible: Bool?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
        }
        /// 
        var xaxis: Xaxis?
    
        /// Controls persistence of user-driven changes in camera attributes. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// 
        struct Domain: Encodable {
            /// If there is a layout grid, use the domain for this row in the grid for this scene subplot .
            var row: Int?
        
            /// Sets the vertical domain of this scene subplot (in plot fraction).
            var y: InfoArray?
        
            /// If there is a layout grid, use the domain for this column in the grid for this scene subplot .
            var column: Int?
        
            /// Sets the horizontal domain of this scene subplot (in plot fraction).
            var x: InfoArray?
        
        }
        /// 
        var domain: Domain?
    
        /// Sets this scene's axis aspectratio.
        struct Aspectratio: Encodable {
            /// 
            var z: Double?
        
            /// 
            var y: Double?
        
            /// 
            struct Impliededits: Encodable {
            }
            /// 
            var impliedEdits: Impliededits?
        
            /// 
            var x: Double?
        
        }
        /// Sets this scene's axis aspectratio.
        var aspectratio: Aspectratio?
    
        /// If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges. If *data*, this scene's axes are drawn in proportion with the axes' ranges. If *manual*, this scene's axes are drawn in proportion with the input of *aspectratio* (the default behavior if *aspectratio* is provided). If *auto*, this scene's axes are drawn using the results of *data* except when one axis is more than four times the size of the two others, where in that case the results of *cube* are used.
        enum Aspectmode: String, Encodable {
            case auto
            case cube
            case data
            case manual
        }
        /// If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges. If *data*, this scene's axes are drawn in proportion with the axes' ranges. If *manual*, this scene's axes are drawn in proportion with the input of *aspectratio* (the default behavior if *aspectratio* is provided). If *auto*, this scene's axes are drawn using the results of *data* except when one axis is more than four times the size of the two others, where in that case the results of *cube* are used.
        var aspectmode: Aspectmode?
    
        /// 
        struct Zaxis: Encodable {
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
            var spikesides: Bool?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Sets the width (in px) of the zero line.
            var zerolinewidth: Double?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            enum Calendar: String, Encodable {
                case gregorian
                case chinese
                case coptic
                case discworld
                case ethiopian
                case hebrew
                case islamic
                case julian
                case mayan
                case nanakshahi
                case nepali
                case persian
                case jalali
                case taiwan
                case thai
                case ummalqura
            }
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            var calendar: Calendar?
        
            /// Sets the color of the spikes.
            var spikecolor: Color?
        
            /// Sets the line color of the zero line.
            var zerolinecolor: Color?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Sets whether or not this axis' wall has a background color.
            var showbackground: Bool?
        
            /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
            var range: InfoArray?
        
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            enum Categoryorder: String, Encodable {
                case trace
                case categoryascending
                case categorydescending
                case array
                case totalascending
                case totaldescending
                case minascending
                case mindescending
                case maxascending
                case maxdescending
                case sumascending
                case sumdescending
                case meanascending
                case meandescending
                case medianascending
                case mediandescending
            }
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            var categoryorder: Categoryorder?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            var categoryarray: [Double]?
        
            /// 
            struct Title: Encodable {
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
            }
            /// 
            var title: Title?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the background color of this axis' wall.
            var backgroundcolor: Color?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
            enum Rangemode: String, Encodable {
                case normal
                case tozero
                case nonnegative
            }
            /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
            var rangemode: Rangemode?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Sets the thickness (in px) of the spikes.
            var spikethickness: Double?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets whether or not this axis is labeled
            var showaxeslabels: Bool?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            var showspikes: Bool?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            enum AxisType: String, Encodable {
                case auto
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            var type: AxisType?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            enum Mirror: String, Encodable {
                case yes
                case ticks
                case no
                case all
                case allticks
            }
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            var mirror: Mirror?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
            var visible: Bool?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// 
            struct _Deprecated: Encodable {
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis. If *true*, the zero line is drawn on top of the grid lines.
            var zeroline: Bool?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            var categoryarraysrc: String?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// 
                var size: Double?
            
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            enum Autorange: String, Encodable {
                case yes
                case no
                case reversed
            }
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            var autorange: Autorange?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
        }
        /// 
        var zaxis: Zaxis?
    
        /// Determines the mode of drag interactions for this scene.
        enum Dragmode: String, Encodable {
            case orbit
            case turntable
            case zoom
            case pan
            case no
        }
        /// Determines the mode of drag interactions for this scene.
        var dragmode: Dragmode?
    
        /// Determines the mode of hover interactions for this scene.
        enum Hovermode: String, Encodable {
            case closest
            case no
        }
        /// Determines the mode of hover interactions for this scene.
        var hovermode: Hovermode?
    
        /// 
        struct Yaxis: Encodable {
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
            var visible: Bool?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Sets whether or not this axis' wall has a background color.
            var showbackground: Bool?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Sets the axis line color.
            var linecolor: Color?
        
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            enum AxisType: String, Encodable {
                case auto
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
            var type: AxisType?
        
            /// Sets the color of the spikes.
            var spikecolor: Color?
        
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            enum Categoryorder: String, Encodable {
                case trace
                case categoryascending
                case categorydescending
                case array
                case totalascending
                case totaldescending
                case minascending
                case mindescending
                case maxascending
                case maxdescending
                case sumascending
                case sumdescending
                case meanascending
                case meandescending
                case medianascending
                case mediandescending
            }
            /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
            var categoryorder: Categoryorder?
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis. If *true*, the zero line is drawn on top of the grid lines.
            var zeroline: Bool?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
            var spikesides: Bool?
        
            /// 
            struct Title: Encodable {
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                }
                /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
                var font: Font?
            
                /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
            }
            /// 
            var title: Title?
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            enum Mirror: String, Encodable {
                case yes
                case ticks
                case no
                case all
                case allticks
            }
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            var mirror: Mirror?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            var categoryarraysrc: String?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            enum Calendar: String, Encodable {
                case gregorian
                case chinese
                case coptic
                case discworld
                case ethiopian
                case hebrew
                case islamic
                case julian
                case mayan
                case nanakshahi
                case nepali
                case persian
                case jalali
                case taiwan
                case thai
                case ummalqura
            }
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
            var calendar: Calendar?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
            var showgrid: Bool?
        
            /// 
            struct _Deprecated: Encodable {
                /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
                var title: String?
            
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                struct Titlefont: Encodable {
                    /// 
                    var color: Color?
                
                    /// 
                    var size: Double?
                
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                }
                /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
                var titlefont: Titlefont?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets the width (in px) of the zero line.
            var zerolinewidth: Double?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
            var range: InfoArray?
        
            /// Sets the color of the grid lines.
            var gridcolor: Color?
        
            /// Sets the background color of this axis' wall.
            var backgroundcolor: Color?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            var showspikes: Bool?
        
            /// Sets the thickness (in px) of the spikes.
            var spikethickness: Double?
        
            /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
            enum Rangemode: String, Encodable {
                case normal
                case tozero
                case nonnegative
            }
            /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
            var rangemode: Rangemode?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            var categoryarray: [Double]?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets the line color of the zero line.
            var zerolinecolor: Color?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            enum Autorange: String, Encodable {
                case yes
                case no
                case reversed
            }
            /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            var autorange: Autorange?
        
            /// Sets the tick font.
            struct Tickfont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
            }
            /// Sets the tick font.
            var tickfont: Tickfont?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
            var color: Color?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var hoverformat: String?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Sets whether or not this axis is labeled
            var showaxeslabels: Bool?
        
            /// Determines whether or not a line bounding this axis is drawn.
            var showline: Bool?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the width (in px) of the grid lines.
            var gridwidth: Double?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
            /// Sets the width (in px) of the axis line.
            var linewidth: Double?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
        }
        /// 
        var yaxis: Yaxis?
    
        /// 
        struct Annotations: Encodable {
            /// 
            struct Items: Encodable {
                /// 
                struct Annotation: Encodable {
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                    var templateitemname: String?
                
                    /// Determines whether the annotation text box captures mouse move and click events, or allows those events to pass through to data points in the plot that may be behind the annotation. By default `captureevents` is *false* unless `hovertext` is provided. If you use the event `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
                    var captureevents: Bool?
                
                    /// Sets the annotation arrow head position.
                    struct Arrowside: OptionSet, Encodable {
                        let rawValue: Int
                    
                        static let end = Arrowside(rawValue: 1 << 0)
                        static let start = Arrowside(rawValue: 1 << 1)
                    
                        init(rawValue: Int) { self.rawValue = rawValue }
                    
                        func encode(to encoder: Encoder) throws {
                            var options = [String]()
                            if (self.rawValue & 1 << 0) != 0 { options += ["end"] }
                            if (self.rawValue & 1 << 1) != 0 { options += ["start"] }
                            var container = encoder.singleValueContainer()
                            try container.encode(options.joined(separator: "+"))
                        }
                    }
                    /// Sets the annotation arrow head position.
                    var arrowside: Arrowside?
                
                    /// Sets an explicit height for the text box. null (default) lets the text set the box height. Taller text will be clipped.
                    var height: Double?
                
                    /// Sets the background color of the annotation.
                    var bgcolor: Color?
                
                    /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the annotation. For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                    enum Yanchor: String, Encodable {
                        case auto
                        case top
                        case middle
                        case bottom
                    }
                    /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the annotation. For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                    var yanchor: Yanchor?
                
                    /// Sets the color of the border enclosing the annotation `text`.
                    var bordercolor: Color?
                
                    /// Sets the start annotation arrow head style.
                    var startarrowhead: Int?
                
                    /// Sets the annotation text font.
                    struct Font: Encodable {
                        /// 
                        var size: Double?
                    
                        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                        var family: String?
                    
                        /// 
                        var color: Color?
                    
                    }
                    /// Sets the annotation text font.
                    var font: Font?
                
                    /// 
                    struct Hoverlabel: Encodable {
                        /// Sets the hover label text font. By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
                        struct Font: Encodable {
                            /// 
                            var size: Double?
                        
                            /// 
                            var color: Color?
                        
                            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                            var family: String?
                        
                        }
                        /// Sets the hover label text font. By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
                        var font: Font?
                    
                        /// Sets the background color of the hover label. By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
                        var bgcolor: Color?
                    
                        /// Sets the border color of the hover label. By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
                        var bordercolor: Color?
                    
                    }
                    /// 
                    var hoverlabel: Hoverlabel?
                
                    /// Sets the annotation's z position.
                    var z: Anything?
                
                    /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` / `yshift` which moves everything by this amount.
                    var standoff: Double?
                
                    /// Sets the text associated with this annotation. Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
                    var text: String?
                
                    /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
                    enum Align: String, Encodable {
                        case left
                        case center
                        case right
                    }
                    /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
                    var align: Align?
                
                    /// Determines whether or not the annotation is drawn with an arrow. If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and `y` provided.
                    var showarrow: Bool?
                
                    /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative) by this many pixels.
                    var xshift: Double?
                
                    /// Sets the opacity of the annotation (text + arrow).
                    var opacity: Double?
                
                    /// Determines whether or not this annotation is visible.
                    var visible: Bool?
                
                    /// Sets the padding (in px) between the `text` and the enclosing border.
                    var borderpad: Double?
                
                    /// Sets an explicit width for the text box. null (default) lets the text set the box width. Wider text will be clipped. There is no automatic wrapping; use <br> to start a new line.
                    var width: Double?
                
                    /// Sets the annotation's x position.
                    var x: Anything?
                
                    /// Sets the size of the end annotation arrow head, relative to `arrowwidth`. A value of 1 (default) gives a head about 3x as wide as the line.
                    var arrowsize: Double?
                
                    /// Sets text to appear when hovering over this annotation. If omitted or blank, no hover label will appear.
                    var hovertext: String?
                
                    /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` / `yshift` which moves everything by this amount.
                    var startstandoff: Double?
                
                    /// Sets the vertical alignment of the `text` within the box. Has an effect only if an explicit height is set to override the text height.
                    enum Valign: String, Encodable {
                        case top
                        case middle
                        case bottom
                    }
                    /// Sets the vertical alignment of the `text` within the box. Has an effect only if an explicit height is set to override the text height.
                    var valign: Valign?
                
                    /// Sets the annotation's y position.
                    var y: Anything?
                
                    /// Sets the end annotation arrow head style.
                    var arrowhead: Int?
                
                    /// Sets the width (in px) of the border enclosing the annotation `text`.
                    var borderwidth: Double?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// Sets the angle at which the `text` is drawn with respect to the horizontal.
                    var textangle: Angle?
                
                    /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*, *center* or *right* of the annotation. For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the anchor is equivalent to *center* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                    enum Xanchor: String, Encodable {
                        case auto
                        case left
                        case center
                        case right
                    }
                    /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*, *center* or *right* of the annotation. For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the anchor is equivalent to *center* for data-referenced annotations or if there is an arrow, whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
                    var xanchor: Xanchor?
                
                    /// Sets the y component of the arrow tail about the arrow head (in pixels).
                    var ay: Double?
                
                    /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this many pixels.
                    var yshift: Double?
                
                    /// Sets the width (in px) of annotation arrow line.
                    var arrowwidth: Double?
                
                    /// Sets the color of the annotation arrow.
                    var arrowcolor: Color?
                
                    /// Sets the x component of the arrow tail about the arrow head (in pixels).
                    var ax: Double?
                
                    /// Sets the size of the start annotation arrow head, relative to `arrowwidth`. A value of 1 (default) gives a head about 3x as wide as the line.
                    var startarrowsize: Double?
                
                }
                /// 
                var annotation: Annotation?
            
            }
            /// 
            var items: Items?
        
        }
        /// 
        var annotations: Annotations?
    
    }
    /// 
    var scene: Scene?

    /// Sets the default trace colors.
    var colorway: ColorList?

    /// Sets the decimal and thousand separators. For example, *. * puts a '.' before decimals and a space between thousands. In English locales, dflt is *.,* but other locales may alter this default.
    var separators: String?

    /// Sets the color of plotting area in-between x and y axes.
    var plot_bgcolor: Color?

    /// 
    struct Xaxis: Encodable {
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        enum Spikesnap: String, Encodable {
            case data
            case cursor
        }
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        var spikesnap: Spikesnap?
    
        /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
        var nticks: Int?
    
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        enum Showtickprefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        var showtickprefix: Showtickprefix?
    
        /// Sets the tick font.
        struct Tickfont: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var size: Double?
        
            /// 
            var color: Color?
        
        }
        /// Sets the tick font.
        var tickfont: Tickfont?
    
        /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        var tickvals: [Double]?
    
        /// If set to an opposite-letter axis id (e.g. `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this axis' position is determined by `position`.
        enum Anchor: String, Encodable {
            case free
            case xxx
            case yyy
        }
        /// If set to an opposite-letter axis id (e.g. `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this axis' position is determined by `position`.
        var anchor: Anchor?
    
        /// Sets the width (in px) of the axis line.
        var linewidth: Double?
    
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
        enum Calendar: String, Encodable {
            case gregorian
            case chinese
            case coptic
            case discworld
            case ethiopian
            case hebrew
            case islamic
            case julian
            case mayan
            case nanakshahi
            case nepali
            case persian
            case jalali
            case taiwan
            case thai
            case ummalqura
        }
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. This does not set the calendar for interpreting data on this axis, that's specified in the trace or via the global `layout.calendar`
        var calendar: Calendar?
    
        /// Sets the domain of this axis (in plot fraction).
        var domain: InfoArray?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default), and *bottom* for y axes.
        enum Constraintoward: String, Encodable {
            case left
            case center
            case right
            case top
            case middle
            case bottom
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default), and *bottom* for y axes.
        var constraintoward: Constraintoward?
    
        /// Sets the line color of the zero line.
        var zerolinecolor: Color?
    
        /// Sets the width (in px) of the grid lines.
        var gridwidth: Double?
    
        /// Sets the tick length (in px).
        var ticklen: Double?
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis. Only has an effect on *multicategory* axes.
        var showdividers: Bool?
    
        /// Sets the axis line color.
        var linecolor: Color?
    
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        enum AxisType: String, Encodable {
            case auto
            case linear
            case log
            case date
            case category
            case multicategory
        }
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        var type: AxisType?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
        enum Rangemode: String, Encodable {
            case normal
            case tozero
            case nonnegative
        }
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. Applies only to linear axes.
        var rangemode: Rangemode?
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates). Only has an effect if `anchor` is set to *free*.
        var position: Double?
    
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        enum Side: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        var side: Side?
    
        /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
        enum Layer: String, Encodable {
            case abovetraces
            case belowtraces
        }
        /// Sets the layer on which this axis is displayed. If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this axis is displayed below all the subplot's traces, but above the grid lines. Useful when used together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text nodes above this axis.
        var layer: Layer?
    
        /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
        var tick0: Anything?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        enum Autorange: String, Encodable {
            case yes
            case no
            case reversed
        }
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        var autorange: Autorange?
    
        /// Sets the width (in px) of the zero line.
        var spikethickness: Double?
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in `editable: true` configuration. Defaults to `layout.uirevision`.
        var uirevision: Anything?
    
        /// Sets the spike color. If undefined, will use the series color
        var spikecolor: Color?
    
        /// Sets the tick color.
        var tickcolor: Color?
    
        /// Sets the source reference on plot.ly for  tickvals .
        var tickvalssrc: String?
    
        /// Sets the dash style of lines. Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a dash length list in px (eg *5px,10px,2px,2px*).
        var spikedash: String?
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        var dividerwidth: Double?
    
        /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
        enum Ticks: String, Encodable {
            case outside
            case inside
            case none
        }
        /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
        var ticks: Ticks?
    
        /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
        var dtick: Anything?
    
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. If *false*, this axis does not overlay any same-letter axes. In this case, for axes with overlapping domains only the highest-numbered axis will be visible.
        enum Overlaying: String, Encodable {
            case free
            case xxx
            case yyy
        }
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. If *false*, this axis does not overlay any same-letter axes. In this case, for axes with overlapping domains only the highest-numbered axis will be visible.
        var overlaying: Overlaying?
    
        /// Sets a tick label prefix.
        var tickprefix: String?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        var categoryarraysrc: String?
    
        /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
        var showgrid: Bool?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        enum Constrain: String, Encodable {
            case range
            case domain
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        var constrain: Constrain?
    
        /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        var ticktext: [Double]?
    
        /// 
        struct Rangeselector: Encodable {
            /// Sets the x position (in normalized coordinates) of the range selector.
            var x: Double?
        
            /// Sets the font of the range selector button text.
            struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
            }
            /// Sets the font of the range selector button text.
            var font: Font?
        
            /// Sets the range selector's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
            enum Yanchor: String, Encodable {
                case auto
                case top
                case middle
                case bottom
            }
            /// Sets the range selector's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
            var yanchor: Yanchor?
        
            /// Determines whether or not this range selector is visible. Note that range selectors are only available for x axes of `type` set to or auto-typed to *date*.
            var visible: Bool?
        
            /// Sets the width (in px) of the border enclosing the range selector.
            var borderwidth: Double?
        
            /// Sets the background color of the range selector buttons.
            var bgcolor: Color?
        
            /// 
            struct Buttons: Encodable {
                /// 
                struct Items: Encodable {
                    /// Sets the specifications for each buttons. By default, a range selector comes with no buttons.
                    struct Button: Encodable {
                        /// Sets the text label to appear on the button.
                        var label: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// Sets the number of steps to take to update the range. Use with `step` to specify the update interval.
                        var count: Double?
                    
                        /// Sets the range update mode. If *backward*, the range update shifts the start of range back *count* times *step* milliseconds. If *todate*, the range update shifts the start of range back to the first timestamp from *count* times *step* milliseconds back. For example, with `step` set to *year* and `count` set to *1* the range update shifts the start of the range back to January 01 of the current year. Month and year *todate* are currently available only for the built-in (Gregorian) calendar.
                        enum Stepmode: String, Encodable {
                            case backward
                            case todate
                        }
                        /// Sets the range update mode. If *backward*, the range update shifts the start of range back *count* times *step* milliseconds. If *todate*, the range update shifts the start of range back to the first timestamp from *count* times *step* milliseconds back. For example, with `step` set to *year* and `count` set to *1* the range update shifts the start of the range back to January 01 of the current year. Month and year *todate* are currently available only for the built-in (Gregorian) calendar.
                        var stepmode: Stepmode?
                    
                        /// The unit of measurement that the `count` value will set the range by.
                        enum Step: String, Encodable {
                            case month
                            case year
                            case day
                            case hour
                            case minute
                            case second
                            case all
                        }
                        /// The unit of measurement that the `count` value will set the range by.
                        var step: Step?
                    
                        /// Determines whether or not this button is visible.
                        var visible: Bool?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                    }
                    /// Sets the specifications for each buttons. By default, a range selector comes with no buttons.
                    var button: Button?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var buttons: Buttons?
        
            /// Sets the color of the border enclosing the range selector.
            var bordercolor: Color?
        
            /// Sets the range selector's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
            enum Xanchor: String, Encodable {
                case auto
                case left
                case center
                case right
            }
            /// Sets the range selector's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
            var xanchor: Xanchor?
        
            /// Sets the background color of the active range selector button.
            var activecolor: Color?
        
            /// Sets the y position (in normalized coordinates) of the range selector.
            var y: Double?
        
        }
        /// 
        var rangeselector: Rangeselector?
    
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis changes together with the range of the corresponding axis such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain` and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis: {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`. The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}` or longer) are redundant and the last constraint encountered will be ignored to avoid possible inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden.
        enum Scaleanchor: String, Encodable {
            case xxx
            case yyy
        }
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis changes together with the range of the corresponding axis such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain` and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis: {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`. The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}` or longer) are redundant and the last constraint encountered will be ignored to avoid possible inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden.
        var scaleanchor: Scaleanchor?
    
        /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        var categoryarray: [Double]?
    
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
        enum Categoryorder: String, Encodable {
            case trace
            case categoryascending
            case categorydescending
            case array
            case totalascending
            case totaldescending
            case minascending
            case mindescending
            case maxascending
            case maxdescending
            case sumascending
            case sumdescending
            case meanascending
            case meandescending
            case medianascending
            case mediandescending
        }
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`. Set `categoryorder` to *total ascending* or *total descending* if order should be determined by the numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean or median of all the values.
        var categoryorder: Categoryorder?
    
        /// Sets the color of the grid lines.
        var gridcolor: Color?
    
        /// Sets the width (in px) of the zero line.
        var zerolinewidth: Double?
    
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        enum Mirror: String, Encodable {
            case yes
            case ticks
            case no
            case all
            case allticks
        }
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        var mirror: Mirror?
    
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*, ticks and grid lines are drawn half a category to the left/bottom of labels.
        enum Tickson: String, Encodable {
            case labels
            case boundaries
        }
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*, ticks and grid lines are drawn half a category to the left/bottom of labels.
        var tickson: Tickson?
    
        /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
        enum Tickmode: String, Encodable {
            case auto
            case linear
            case array
        }
        /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
        var tickmode: Tickmode?
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale ratio. For example, if this value is 10, then every unit on this axis spans 10 times the number of pixels as a unit on the linked axis. Use this for example to create an elevation profile where the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        var scaleratio: Double?
    
        /// Determines whether or not the tick labels are drawn.
        var showticklabels: Bool?
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        var hoverformat: String?
    
        /// Sets the tick width (in px).
        var tickwidth: Double?
    
        /// Determines whether or not this axis is zoom-able. If true, then zoom is disabled.
        var fixedrange: Bool?
    
        /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        enum Exponentformat: String, Encodable {
            case none
            case e
            case E
            case power
            case SI
            case B
        }
        /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        var exponentformat: Exponentformat?
    
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        enum Showexponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        var showexponent: Showexponent?
    
        /// If "true", even 4-digit integers are separated
        var separatethousands: Bool?
    
        /// A single toggle to hide the axis while preserving interaction like dragging. Default is true when a cheater plot is present on the axis, otherwise false
        var visible: Bool?
    
        /// Determines whether or not a line bounding this axis is drawn.
        var showline: Bool?
    
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If *marker*, then a marker dot is drawn on the axis the series is plotted on
        struct Spikemode: OptionSet, Encodable {
            let rawValue: Int
        
            static let toaxis = Spikemode(rawValue: 1 << 0)
            static let across = Spikemode(rawValue: 1 << 1)
            static let marker = Spikemode(rawValue: 1 << 2)
        
            init(rawValue: Int) { self.rawValue = rawValue }
        
            func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If *marker*, then a marker dot is drawn on the axis the series is plotted on
        var spikemode: Spikemode?
    
        /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
        var tickangle: Angle?
    
        /// 
        struct Tickformatstops: Encodable {
            /// 
            struct Items: Encodable {
                /// 
                struct Tickformatstop: Encodable {
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    var dtickrange: InfoArray?
                
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                    var templateitemname: String?
                
                    /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                    var enabled: Bool?
                
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    var value: String?
                
                }
                /// 
                var tickformatstop: Tickformatstop?
            
            }
            /// 
            var items: Items?
        
        }
        /// 
        var tickformatstops: Tickformatstops?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        var tickformat: String?
    
        /// 
        struct _Deprecated: Encodable {
            /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
            struct Titlefont: Encodable {
                /// 
                var size: Double?
            
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Former `titlefont` is now the sub-attribute `font` of `title`. To customize title font properties, please use `title.font` now.
            var titlefont: Titlefont?
        
            /// Value of `title` is no longer a simple *string* but a set of sub-attributes. To set the axis' title, please use `title.text` now.
            var title: String?
        
            /// Obsolete. Set `tickmode` to *auto* for old `autotick` *true* behavior. Set `tickmode` to *linear* for `autotick` *false*.
            var autotick: Bool?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis. If *true*, the zero line is drawn on top of the grid lines.
        var zeroline: Bool?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
        var color: Color?
    
        /// Sets a tick label suffix.
        var ticksuffix: String?
    
        /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
        var range: InfoArray?
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        var dividercolor: Color?
    
        /// Sets the source reference on plot.ly for  ticktext .
        var ticktextsrc: String?
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis. Note: This only takes affect when hovermode = closest
        var showspikes: Bool?
    
        /// 
        struct Rangeslider: Encodable {
            /// Sets the range of the range slider. If not set, defaults to the full xaxis range. If the axis `type` is *log*, then you must take the log of your desired range. If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
            var range: InfoArray?
        
            /// Sets the border color of the range slider.
            var bordercolor: Color?
        
            /// Determines whether or not the range slider will be visible. If visible, perpendicular axes will be set to `fixedrange`
            var visible: Bool?
        
            /// The height of the range slider as a fraction of the total plot area height.
            var thickness: Double?
        
            /// Sets the background color of the range slider.
            var bgcolor: Color?
        
            /// 
            struct Yaxis: Encodable {
                /// Sets the range of this axis for the rangeslider.
                var range: InfoArray?
            
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in the main plot when zooming in/out. If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current range of the corresponding y-axis on the main subplot is used.
                enum Rangemode: String, Encodable {
                    case auto
                    case fixed
                    case match
                }
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in the main plot when zooming in/out. If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current range of the corresponding y-axis on the main subplot is used.
                var rangemode: Rangemode?
            
            }
            /// 
            var yaxis: Yaxis?
        
            /// Sets the border width of the range slider.
            var borderwidth: Int?
        
            /// Determines whether or not the range slider range is computed in relation to the input data. If `range` is provided, then `autorange` is set to *false*.
            var autorange: Bool?
        
        }
        /// 
        var rangeslider: Rangeslider?
    
        /// Same as `showtickprefix` but for tick suffixes.
        enum Showticksuffix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// Same as `showtickprefix` but for tick suffixes.
        var showticksuffix: Showticksuffix?
    
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis will match the range of the corresponding axis in data-coordinates space. Moreover, matching axes share auto-range values, category lists and histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden. Moreover, note that matching axes must have the same `type`.
        enum Matches: String, Encodable {
            case xxx
            case yyy
        }
        /// If set to another axis id (e.g. `x2`, `y`), the range of this axis will match the range of the corresponding axis in data-coordinates space. Moreover, matching axes share auto-range values, category lists and histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a `matches` constraint is currently forbidden. Moreover, note that matching axes must have the same `type`.
        var matches: Matches?
    
        /// Determines whether long tick labels automatically grow the figure margins.
        var automargin: Bool?
    
        /// 
        struct Title: Encodable {
            /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
            var text: String?
        
            /// Sets the standoff distance (in px) between the axis labels and the title text The default value is a function of the axis tick labels, the title `font.size` and the axis `linewidth`. Note that the axis title position is always constrained within the margins, so the actual standoff distance is always less than the set or default value. By setting `standoff` and turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff distance.
            var standoff: Double?
        
            /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            struct Font: Encodable {
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Sets this axis' title font. Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            var font: Font?
        
        }
        /// 
        var title: Title?
    
    }
    /// 
    var xaxis: Xaxis?

    /// Determines the mode of drag interactions. *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable* apply only to 3D scenes.
    enum Dragmode: String, Encodable {
        case zoom
        case pan
        case select
        case lasso
        case orbit
        case turntable
        case no
    }
    /// Determines the mode of drag interactions. *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable* apply only to 3D scenes.
    var dragmode: Dragmode?

}