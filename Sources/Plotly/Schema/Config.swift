public struct Config: Encodable {
    /// Determines whether the graphs are interactive or not. 
    ///
    /// If *false*, no interactivity, for export or image generation.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-staticPlot) |
    /// [Python](https://plot.ly/python/reference/#config-staticPlot) |
    /// [R](https://plot.ly/r/reference/#config-staticPlot)
    public var staticPlot: Bool?

    /// Sets base URL for the 'Edit in Chart Studio' (aka sendDataToCloud) mode bar button and the showLink/sendData on-graph link
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-plotlyServerURL) |
    /// [Python](https://plot.ly/python/reference/#config-plotlyServerURL) |
    /// [R](https://plot.ly/r/reference/#config-plotlyServerURL)
    public var plotlyServerURL: String?

    /// Determines whether the graph is editable or not. 
    ///
    /// Sets all pieces of `edits` unless a separate `edits` config item overrides individual parts.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-editable) |
    /// [Python](https://plot.ly/python/reference/#config-editable) |
    /// [R](https://plot.ly/r/reference/#config-editable)
    public var editable: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits) |
    /// [Python](https://plot.ly/python/reference/#config-edits) |
    /// [R](https://plot.ly/r/reference/#config-edits)
    public var edits: Edits0?

    /// Determines whether the graphs are plotted with respect to layout.autosize:true and infer its container size.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-autosizable) |
    /// [Python](https://plot.ly/python/reference/#config-autosizable) |
    /// [R](https://plot.ly/r/reference/#config-autosizable)
    public var autosizable: Bool?

    /// Determines whether to change the layout size when window is resized. 
    ///
    /// In v2, this option will be removed and will always be true.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-responsive) |
    /// [Python](https://plot.ly/python/reference/#config-responsive) |
    /// [R](https://plot.ly/r/reference/#config-responsive)
    public var responsive: Bool?

    /// When `layout.autosize` is turned on, determines whether the graph fills the container (the default) or the screen (if set to *true*).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-fillFrame) |
    /// [Python](https://plot.ly/python/reference/#config-fillFrame) |
    /// [R](https://plot.ly/r/reference/#config-fillFrame)
    public var fillFrame: Bool?

    /// When `layout.autosize` is turned on, set the frame margins in fraction of the graph size.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-frameMargins) |
    /// [Python](https://plot.ly/python/reference/#config-frameMargins) |
    /// [R](https://plot.ly/r/reference/#config-frameMargins)
    public var frameMargins: Double?

    /// Determines whether mouse wheel or two-finger scroll zooms is enable. 
    ///
    /// Turned on by default for gl3d, geo and mapbox subplots (as these subplot types do not have
    /// zoombox via pan), but turned off by default for cartesian subplots. Set `scrollZoom` to *false*
    /// to disable scrolling for all subplots.
    ///
    /// # Used By
    /// `Config.scrollZoom` |
    public struct ScrollZoom: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let cartesian = ScrollZoom(rawValue: 1 << 0)
        public static let GL3D = ScrollZoom(rawValue: 1 << 1)
        public static let geo = ScrollZoom(rawValue: 1 << 2)
        public static let mapbox = ScrollZoom(rawValue: 1 << 3)
        public static let `true` = ScrollZoom(rawValue: 1 << 4)
        public static let `false` = ScrollZoom(rawValue: 1 << 5)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["cartesian"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["gl3d"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["geo"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["mapbox"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["true"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["false"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines whether mouse wheel or two-finger scroll zooms is enable. 
    ///
    /// Turned on by default for gl3d, geo and mapbox subplots (as these subplot types do not have
    /// zoombox via pan), but turned off by default for cartesian subplots. Set `scrollZoom` to *false*
    /// to disable scrolling for all subplots.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-scrollZoom) |
    /// [Python](https://plot.ly/python/reference/#config-scrollZoom) |
    /// [R](https://plot.ly/r/reference/#config-scrollZoom)
    public var scrollZoom: ScrollZoom?

    /// Sets the double click interaction mode. 
    ///
    /// Has an effect only in cartesian plots. If *false*, double click is disable. If *reset*, double
    /// click resets the axis ranges to their initial values. If *autosize*, double click set the axis
    /// ranges to their autorange values. If *reset+autosize*, the odd double clicks resets the axis
    /// ranges to their initial values and even double clicks set the axis ranges to their autorange
    /// values.
    ///
    /// # Used By
    /// `Config.doubleClick` |
    public enum DoubleClick: String, Encodable {
        case `false` = "false"
        case reset
        case autoSize = "autosize"
        case resetAndAutoSize = "reset+autosize"
    }
    /// Sets the double click interaction mode. 
    ///
    /// Has an effect only in cartesian plots. If *false*, double click is disable. If *reset*, double
    /// click resets the axis ranges to their initial values. If *autosize*, double click set the axis
    /// ranges to their autorange values. If *reset+autosize*, the odd double clicks resets the axis
    /// ranges to their initial values and even double clicks set the axis ranges to their autorange
    /// values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-doubleClick) |
    /// [Python](https://plot.ly/python/reference/#config-doubleClick) |
    /// [R](https://plot.ly/r/reference/#config-doubleClick)
    public var doubleClick: DoubleClick?

    /// Sets the delay for registering a double-click in ms. 
    ///
    /// This is the time interval (in ms) between first mousedown and 2nd mouseup to constitute a
    /// double-click. This setting propagates to all on-subplot double clicks (except for geo and
    /// mapbox) and on-legend double clicks.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-doubleClickDelay) |
    /// [Python](https://plot.ly/python/reference/#config-doubleClickDelay) |
    /// [R](https://plot.ly/r/reference/#config-doubleClickDelay)
    public var doubleClickDelay: Double?

    /// Set to *false* to omit cartesian axis pan/zoom drag handles.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showAxisDragHandles) |
    /// [Python](https://plot.ly/python/reference/#config-showAxisDragHandles) |
    /// [R](https://plot.ly/r/reference/#config-showAxisDragHandles)
    public var showAxisDragHandles: Bool?

    /// Set to *false* to omit direct range entry at the pan/zoom drag points, note that `showAxisDragHandles` must be enabled to have an effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showAxisRangeEntryBoxes) |
    /// [Python](https://plot.ly/python/reference/#config-showAxisRangeEntryBoxes) |
    /// [R](https://plot.ly/r/reference/#config-showAxisRangeEntryBoxes)
    public var showAxisRangeEntryBoxes: Bool?

    /// Determines whether or not tips are shown while interacting with the resulting graphs.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showTips) |
    /// [Python](https://plot.ly/python/reference/#config-showTips) |
    /// [R](https://plot.ly/r/reference/#config-showTips)
    public var showTips: Bool?

    /// Determines whether a link to plot.ly is displayed at the bottom right corner of resulting graphs. 
    ///
    /// Use with `sendData` and `linkText`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showLink) |
    /// [Python](https://plot.ly/python/reference/#config-showLink) |
    /// [R](https://plot.ly/r/reference/#config-showLink)
    public var showLink: Bool?

    /// Sets the text appearing in the `showLink` link.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-linkText) |
    /// [Python](https://plot.ly/python/reference/#config-linkText) |
    /// [R](https://plot.ly/r/reference/#config-linkText)
    public var linkText: String?

    /// If *showLink* is true, does it contain data just link to a plot.ly file?
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-sendData) |
    /// [Python](https://plot.ly/python/reference/#config-sendData) |
    /// [R](https://plot.ly/r/reference/#config-sendData)
    public var sendData: Bool?

    /// Adds a source-displaying function to show sources on the resulting graphs.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showSources) |
    /// [Python](https://plot.ly/python/reference/#config-showSources) |
    /// [R](https://plot.ly/r/reference/#config-showSources)
    public var showSources: Anything?

    /// Determines the mode bar display mode. 
    ///
    /// If *true*, the mode bar is always visible. If *false*, the mode bar is always hidden. If
    /// *hover*, the mode bar is visible while the mouse cursor is on the graph container.
    ///
    /// # Used By
    /// `Config.displayModeBar` |
    public enum DisplayModeBar: String, Encodable {
        case hover
        case `true` = "true"
        case `false` = "false"
    }
    /// Determines the mode bar display mode. 
    ///
    /// If *true*, the mode bar is always visible. If *false*, the mode bar is always hidden. If
    /// *hover*, the mode bar is visible while the mouse cursor is on the graph container.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-displayModeBar) |
    /// [Python](https://plot.ly/python/reference/#config-displayModeBar) |
    /// [R](https://plot.ly/r/reference/#config-displayModeBar)
    public var displayModeBar: DisplayModeBar?

    /// Should we include a ModeBar button, labeled "Edit in Chart Studio", that sends this chart to plot.ly or another plotly server as specified by `plotlyServerURL` for editing, export, etc? Prior to version 1.43.0 this button was included by default, now it is opt-in using this flag. 
    ///
    /// Note that this button can (depending on `plotlyServerURL`) send your data to an external server.
    /// However that server does not persist your data until you arrive at the Chart Studio and
    /// explicitly click "Save".
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showSendToCloud) |
    /// [Python](https://plot.ly/python/reference/#config-showSendToCloud) |
    /// [R](https://plot.ly/r/reference/#config-showSendToCloud)
    public var showSendToCloud: Bool?

    /// Same as `showSendToCloud`, but use a pencil icon instead of a floppy-disk. 
    ///
    /// Note that if both `showSendToCloud` and `showEditInChartStudio` are turned, only
    /// `showEditInChartStudio` will be honored.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-showEditInChartStudio) |
    /// [Python](https://plot.ly/python/reference/#config-showEditInChartStudio) |
    /// [R](https://plot.ly/r/reference/#config-showEditInChartStudio)
    public var showEditInChartStudio: Bool?

    /// Remove mode bar buttons by name. 
    ///
    /// See ./components/modebar/buttons.js for the list of names.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-modeBarButtonsToRemove) |
    /// [Python](https://plot.ly/python/reference/#config-modeBarButtonsToRemove) |
    /// [R](https://plot.ly/r/reference/#config-modeBarButtonsToRemove)
    public var modeBarButtonsToRemove: Anything?

    /// Add mode bar button using config objects See ./components/modebar/buttons.js for list of arguments.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-modeBarButtonsToAdd) |
    /// [Python](https://plot.ly/python/reference/#config-modeBarButtonsToAdd) |
    /// [R](https://plot.ly/r/reference/#config-modeBarButtonsToAdd)
    public var modeBarButtonsToAdd: Anything?

    /// Define fully custom mode bar buttons as nested array, where the outer arrays represents button groups, and the inner arrays have buttons config objects or names of default buttons See ./components/modebar/buttons.js for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-modeBarButtons) |
    /// [Python](https://plot.ly/python/reference/#config-modeBarButtons) |
    /// [R](https://plot.ly/r/reference/#config-modeBarButtons)
    public var modeBarButtons: Anything?

    /// Statically override options for toImage modebar button allowed keys are format, filename, width, height, scale see ../components/modebar/buttons.js
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-toImageButtonOptions) |
    /// [Python](https://plot.ly/python/reference/#config-toImageButtonOptions) |
    /// [R](https://plot.ly/r/reference/#config-toImageButtonOptions)
    public var toImageButtonOptions: Anything?

    /// Determines whether or not the plotly logo is displayed on the end of the mode bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-displaylogo) |
    /// [Python](https://plot.ly/python/reference/#config-displaylogo) |
    /// [R](https://plot.ly/r/reference/#config-displaylogo)
    public var displayLogo: Bool?

    /// watermark the images with the company's logo
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-watermark) |
    /// [Python](https://plot.ly/python/reference/#config-watermark) |
    /// [R](https://plot.ly/r/reference/#config-watermark)
    public var watermark: Bool?

    /// Set the pixel ratio during WebGL image export. 
    ///
    /// This config option was formerly named `plot3dPixelRatio` which is now deprecated.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-plotGlPixelRatio) |
    /// [Python](https://plot.ly/python/reference/#config-plotGlPixelRatio) |
    /// [R](https://plot.ly/r/reference/#config-plotGlPixelRatio)
    public var plotGlPixelRatio: Double?

    /// Set function to add the background color (i.e. 
    ///
    /// `layout.paper_color`) to a different container. This function take the graph div as first
    /// argument and the current background color as second argument. Alternatively, set to string
    /// *opaque* to ensure there is white behind it.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-setBackground) |
    /// [Python](https://plot.ly/python/reference/#config-setBackground) |
    /// [R](https://plot.ly/r/reference/#config-setBackground)
    public var setBackground: Anything?

    /// Set the URL to topojson used in geo charts. 
    ///
    /// By default, the topojson files are fetched from cdn.plot.ly. For example, set this option to:
    /// <path-to-plotly.js>/dist/topojson/ to render geographical feature using the topojson files that
    /// ship with the plotly.js module.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-topojsonURL) |
    /// [Python](https://plot.ly/python/reference/#config-topojsonURL) |
    /// [R](https://plot.ly/r/reference/#config-topojsonURL)
    public var topoJsonURL: String?

    /// Mapbox access token (required to plot mapbox trace types) If using an Mapbox Atlas server, set this option to '' so that plotly.js won't attempt to authenticate to the public Mapbox server.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-mapboxAccessToken) |
    /// [Python](https://plot.ly/python/reference/#config-mapboxAccessToken) |
    /// [R](https://plot.ly/r/reference/#config-mapboxAccessToken)
    public var mapboxAccessToken: String?

    /// Turn all console logging on or off (errors will be thrown) This should ONLY be set via Plotly.setPlotConfig Available levels: 0: no logs 1: warnings and errors, but not informational messages 2: verbose logs
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-logging) |
    /// [Python](https://plot.ly/python/reference/#config-logging) |
    /// [R](https://plot.ly/r/reference/#config-logging)
    public var logging: Bool?

    /// Sets the length of the undo/redo queue.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-queueLength) |
    /// [Python](https://plot.ly/python/reference/#config-queueLength) |
    /// [R](https://plot.ly/r/reference/#config-queueLength)
    public var queueLength: Int?

    /// Set global transform to be applied to all traces with no specification needed
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-globalTransforms) |
    /// [Python](https://plot.ly/python/reference/#config-globalTransforms) |
    /// [R](https://plot.ly/r/reference/#config-globalTransforms)
    public var globalTransforms: Anything?

    /// Which localization should we use? Should be a string like 'en' or 'en-US'.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-locale) |
    /// [Python](https://plot.ly/python/reference/#config-locale) |
    /// [R](https://plot.ly/r/reference/#config-locale)
    public var locale: String?

    /// Localization definitions Locales can be provided either here (specific to one chart) or globally by registering them as modules. 
    ///
    /// Should be an object of objects {locale: {dictionary: {...}, format: {...}}} { da: { dictionary:
    /// {'Reset axes': 'Nulstil aksler', ...}, format: {months: [...], shortMonths: [...]} }, ... } All
    /// parts are optional. When looking for translation or format fields, we look first for an exact
    /// match in a config locale, then in a registered module. If those fail, we strip off any
    /// regionalization ('en-US' -> 'en') and try each (config, registry) again. The final fallback for
    /// translation is untranslated (which is US English) and for formats is the base English (the only
    /// consequence being the last fallback date format %x is DD/MM/YYYY instead of MM/DD/YYYY).
    /// Currently `grouping` and `currency` are ignored for our automatic number formatting, but can be
    /// used in custom formats.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-locales) |
    /// [Python](https://plot.ly/python/reference/#config-locales) |
    /// [R](https://plot.ly/r/reference/#config-locales)
    public var locales: Anything?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case staticPlot
        case plotlyServerURL
        case editable
        case edits
        case autosizable
        case responsive
        case fillFrame
        case frameMargins
        case scrollZoom
        case doubleClick
        case doubleClickDelay
        case showAxisDragHandles
        case showAxisRangeEntryBoxes
        case showTips
        case showLink
        case linkText
        case sendData
        case showSources
        case displayModeBar
        case showSendToCloud
        case showEditInChartStudio
        case modeBarButtonsToRemove
        case modeBarButtonsToAdd
        case modeBarButtons
        case toImageButtonOptions
        case displayLogo = "displaylogo"
        case watermark
        case plotGlPixelRatio
        case setBackground
        case topoJsonURL = "topojsonURL"
        case mapboxAccessToken
        case logging
        case queueLength
        case globalTransforms
        case locale
        case locales
    }
    
    public init(staticPlot: Bool? = nil, plotlyServerURL: String? = nil, editable: Bool? = nil, edits: Edits0? = nil, autosizable: Bool? = nil, responsive: Bool? = nil, fillFrame: Bool? = nil, frameMargins: Double? = nil, scrollZoom: ScrollZoom? = nil, doubleClick: DoubleClick? = nil, doubleClickDelay: Double? = nil, showAxisDragHandles: Bool? = nil, showAxisRangeEntryBoxes: Bool? = nil, showTips: Bool? = nil, showLink: Bool? = nil, linkText: String? = nil, sendData: Bool? = nil, showSources: Anything? = nil, displayModeBar: DisplayModeBar? = nil, showSendToCloud: Bool? = nil, showEditInChartStudio: Bool? = nil, modeBarButtonsToRemove: Anything? = nil, modeBarButtonsToAdd: Anything? = nil, modeBarButtons: Anything? = nil, toImageButtonOptions: Anything? = nil, displayLogo: Bool? = nil, watermark: Bool? = nil, plotGlPixelRatio: Double? = nil, setBackground: Anything? = nil, topoJsonURL: String? = nil, mapboxAccessToken: String? = nil, logging: Bool? = nil, queueLength: Int? = nil, globalTransforms: Anything? = nil, locale: String? = nil, locales: Anything? = nil) {
        self.staticPlot = staticPlot
        self.plotlyServerURL = plotlyServerURL
        self.editable = editable
        self.edits = edits
        self.autosizable = autosizable
        self.responsive = responsive
        self.fillFrame = fillFrame
        self.frameMargins = frameMargins
        self.scrollZoom = scrollZoom
        self.doubleClick = doubleClick
        self.doubleClickDelay = doubleClickDelay
        self.showAxisDragHandles = showAxisDragHandles
        self.showAxisRangeEntryBoxes = showAxisRangeEntryBoxes
        self.showTips = showTips
        self.showLink = showLink
        self.linkText = linkText
        self.sendData = sendData
        self.showSources = showSources
        self.displayModeBar = displayModeBar
        self.showSendToCloud = showSendToCloud
        self.showEditInChartStudio = showEditInChartStudio
        self.modeBarButtonsToRemove = modeBarButtonsToRemove
        self.modeBarButtonsToAdd = modeBarButtonsToAdd
        self.modeBarButtons = modeBarButtons
        self.toImageButtonOptions = toImageButtonOptions
        self.displayLogo = displayLogo
        self.watermark = watermark
        self.plotGlPixelRatio = plotGlPixelRatio
        self.setBackground = setBackground
        self.topoJsonURL = topoJsonURL
        self.mapboxAccessToken = mapboxAccessToken
        self.logging = logging
        self.queueLength = queueLength
        self.globalTransforms = globalTransforms
        self.locale = locale
        self.locales = locales
    }
}