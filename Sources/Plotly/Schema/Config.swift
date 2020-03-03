/// Set of choices that affect user interface, toolbar and backend interactions.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#config), 
///   [JavaScript](https://plot.ly/javascript/reference/#config) or 
///   [R](https://plot.ly/r/reference/#config)
public struct Config: Encodable {
    /// Determines whether the graphs are interactive or not.
    /// 
    /// If *false*, no interactivity, for export or image generation.
    public var staticPlot: Bool? = nil

    /// Sets base URL for the 'Edit in Chart Studio' (aka sendDataToCloud) mode bar button and the
    /// showLink/sendData on-graph link
    public var plotlyServerURL: String? = nil

    /// Determines whether the graph is editable or not.
    /// 
    /// Sets all pieces of `edits` unless a separate `edits` config item overrides individual parts.
    public var editable: Bool? = nil

    public struct Edits: Encodable {
        /// Determines if the main anchor of the annotation is editable.
        /// 
        /// The main anchor corresponds to the text (if no arrow) or the arrow (which drags the whole thing
        /// leaving the arrow length & direction unchanged).
        public var annotationPosition: Bool? = nil
    
        /// Has only an effect for annotations with arrows.
        /// 
        /// Enables changing the length and direction of the arrow.
        public var annotationTail: Bool? = nil
    
        /// Enables editing annotation text.
        public var annotationText: Bool? = nil
    
        /// Enables editing axis title text.
        public var axisTitleText: Bool? = nil
    
        /// Enables moving colorbars.
        public var colorBarPosition: Bool? = nil
    
        /// Enables editing colorbar title text.
        public var colorBarTitleText: Bool? = nil
    
        /// Enables moving the legend.
        public var legendPosition: Bool? = nil
    
        /// Enables editing the trace name fields from the legend
        public var legendText: Bool? = nil
    
        /// Enables moving shapes.
        public var shapePosition: Bool? = nil
    
        /// Enables editing the global layout title.
        public var titleText: Bool? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case annotationPosition
            case annotationTail
            case annotationText
            case axisTitleText
            case colorBarPosition = "colorbarPosition"
            case colorBarTitleText = "colorbarTitleText"
            case legendPosition
            case legendText
            case shapePosition
            case titleText
        }
        
        /// Creates `Edits` object with specified properties.
        /// 
        /// - Parameters:
        ///   - annotationPosition: Determines if the main anchor of the annotation is editable.
        ///   - annotationTail: Has only an effect for annotations with arrows.
        ///   - annotationText: Enables editing annotation text.
        ///   - axisTitleText: Enables editing axis title text.
        ///   - colorBarPosition: Enables moving colorbars.
        ///   - colorBarTitleText: Enables editing colorbar title text.
        ///   - legendPosition: Enables moving the legend.
        ///   - legendText: Enables editing the trace name fields from the legend
        ///   - shapePosition: Enables moving shapes.
        ///   - titleText: Enables editing the global layout title.
        public init(annotationPosition: Bool? = nil, annotationTail: Bool? = nil, annotationText: Bool?
                = nil, axisTitleText: Bool? = nil, colorBarPosition: Bool? = nil, colorBarTitleText: Bool? =
                nil, legendPosition: Bool? = nil, legendText: Bool? = nil, shapePosition: Bool? = nil,
                titleText: Bool? = nil) {
            self.annotationPosition = annotationPosition
            self.annotationTail = annotationTail
            self.annotationText = annotationText
            self.axisTitleText = axisTitleText
            self.colorBarPosition = colorBarPosition
            self.colorBarTitleText = colorBarTitleText
            self.legendPosition = legendPosition
            self.legendText = legendText
            self.shapePosition = shapePosition
            self.titleText = titleText
        }
        
    }
    public var edits: Edits? = nil

    /// Determines whether the graphs are plotted with respect to layout.autosize:true and infer its
    /// container size.
    public var autosizable: Bool? = nil

    /// Determines whether to change the layout size when window is resized.
    /// 
    /// In v2, this option will be removed and will always be true.
    public var responsive: Bool? = nil

    /// When `layout.autosize` is turned on, determines whether the graph fills the container (the
    /// default) or the screen (if set to *true*).
    public var fillFrame: Bool? = nil

    /// When `layout.autosize` is turned on, set the frame margins in fraction of the graph size.
    public var frameMargins: Double? = nil

    /// Determines whether mouse wheel or two-finger scroll zooms is enable.
    /// 
    /// Turned on by default for gl3d, geo and mapbox subplots (as these subplot types do not have
    /// zoombox via pan), but turned off by default for cartesian subplots. Set `scrollZoom` to *false*
    /// to disable scrolling for all subplots.
    public struct ScrollZoom: OptionSet, Encodable {
        public let rawValue: Int
        public static var cartesian: ScrollZoom { ScrollZoom(rawValue: 1 << 0) }
        public static var GL3D: ScrollZoom { ScrollZoom(rawValue: 1 << 1) }
        public static var geo: ScrollZoom { ScrollZoom(rawValue: 1 << 2) }
        public static var mapbox: ScrollZoom { ScrollZoom(rawValue: 1 << 3) }
        public static var on: ScrollZoom { ScrollZoom(rawValue: 1 << 4) }
        public static var off: ScrollZoom { ScrollZoom(rawValue: 1 << 5) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
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
    public var scrollZoom: ScrollZoom? = nil

    /// Sets the double click interaction mode.
    /// 
    /// Has an effect only in cartesian plots. If *false*, double click is disable. If *reset*, double
    /// click resets the axis ranges to their initial values. If *autosize*, double click set the axis
    /// ranges to their autorange values. If *reset+autosize*, the odd double clicks resets the axis
    /// ranges to their initial values and even double clicks set the axis ranges to their autorange
    /// values.
    public enum DoubleClick: Encodable {
        case off
        case reset
        case autoSize
        case resetAndAutoSize
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .off:
                try container.encode(false)
            case .reset:
                try container.encode("reset")
            case .autoSize:
                try container.encode("autosize")
            case .resetAndAutoSize:
                try container.encode("reset+autosize")
            }
        }
    }
    /// Sets the double click interaction mode.
    /// 
    /// Has an effect only in cartesian plots. If *false*, double click is disable. If *reset*, double
    /// click resets the axis ranges to their initial values. If *autosize*, double click set the axis
    /// ranges to their autorange values. If *reset+autosize*, the odd double clicks resets the axis
    /// ranges to their initial values and even double clicks set the axis ranges to their autorange
    /// values.
    public var doubleClick: DoubleClick? = nil

    /// Sets the delay for registering a double-click in ms.
    /// 
    /// This is the time interval (in ms) between first mousedown and 2nd mouseup to constitute a
    /// double-click. This setting propagates to all on-subplot double clicks (except for geo and
    /// mapbox) and on-legend double clicks.
    public var doubleClickDelay: Double? = nil

    /// Set to *false* to omit cartesian axis pan/zoom drag handles.
    public var showAxisDragHandles: Bool? = nil

    /// Set to *false* to omit direct range entry at the pan/zoom drag points, note that
    /// `showAxisDragHandles` must be enabled to have an effect.
    public var showAxisRangeEntryBoxes: Bool? = nil

    /// Determines whether or not tips are shown while interacting with the resulting graphs.
    public var showTips: Bool? = nil

    /// Determines whether a link to plot.ly is displayed at the bottom right corner of resulting
    /// graphs.
    /// 
    /// Use with `sendData` and `linkText`.
    public var showLink: Bool? = nil

    /// Sets the text appearing in the `showLink` link.
    public var linkText: String? = nil

    /// If *showLink* is true, does it contain data just link to a plot.ly file?
    public var sendData: Bool? = nil

    /// Adds a source-displaying function to show sources on the resulting graphs.
    public var showSources: Anything? = nil

    /// Determines the mode bar display mode.
    /// 
    /// If *true*, the mode bar is always visible. If *false*, the mode bar is always hidden. If
    /// *hover*, the mode bar is visible while the mouse cursor is on the graph container.
    public enum DisplayModeBar: Encodable {
        case hover
        case on
        case off
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .hover:
                try container.encode("hover")
            case .on:
                try container.encode(true)
            case .off:
                try container.encode(false)
            }
        }
    }
    /// Determines the mode bar display mode.
    /// 
    /// If *true*, the mode bar is always visible. If *false*, the mode bar is always hidden. If
    /// *hover*, the mode bar is visible while the mouse cursor is on the graph container.
    public var displayModeBar: DisplayModeBar? = nil

    /// Should we include a ModeBar button, labeled "Edit in Chart Studio", that sends this chart to
    /// plot.ly or another plotly server as specified by `plotlyServerURL` for editing, export, etc?
    /// Prior to version 1.43.0 this button was included by default, now it is opt-in using this flag.
    /// 
    /// Note that this button can (depending on `plotlyServerURL`) send your data to an external server.
    /// However that server does not persist your data until you arrive at the Chart Studio and
    /// explicitly click "Save".
    public var showSendToCloud: Bool? = nil

    /// Same as `showSendToCloud`, but use a pencil icon instead of a floppy-disk.
    /// 
    /// Note that if both `showSendToCloud` and `showEditInChartStudio` are turned, only
    /// `showEditInChartStudio` will be honored.
    public var showEditInChartStudio: Bool? = nil

    /// Remove mode bar buttons by name.
    /// 
    /// See ./components/modebar/buttons.js for the list of names.
    public var modeBarButtonsToRemove: Anything? = nil

    /// Add mode bar button using config objects See ./components/modebar/buttons.js for list of
    /// arguments.
    public var modeBarButtonsToAdd: Anything? = nil

    /// Define fully custom mode bar buttons as nested array, where the outer arrays represents button
    /// groups, and the inner arrays have buttons config objects or names of default buttons See
    /// ./components/modebar/buttons.js for more info.
    public var modeBarButtons: Anything? = nil

    /// Statically override options for toImage modebar button allowed keys are format, filename, width,
    /// height, scale see ../components/modebar/buttons.js
    public var toImageButtonOptions: Anything? = nil

    /// Determines whether or not the plotly logo is displayed on the end of the mode bar.
    public var displayLogo: Bool? = nil

    /// watermark the images with the company's logo
    public var watermark: Bool? = nil

    /// Set the pixel ratio during WebGL image export.
    /// 
    /// This config option was formerly named `plot3dPixelRatio` which is now deprecated.
    public var plotGlPixelRatio: Double? = nil

    /// Set function to add the background color (i.e.
    /// 
    /// `layout.paper_color`) to a different container. This function take the graph div as first
    /// argument and the current background color as second argument. Alternatively, set to string
    /// *opaque* to ensure there is white behind it.
    public var setBackground: Anything? = nil

    /// Set the URL to topojson used in geo charts.
    /// 
    /// By default, the topojson files are fetched from cdn.plot.ly. For example, set this option to:
    /// <path-to-plotly.js>/dist/topojson/ to render geographical feature using the topojson files that
    /// ship with the plotly.js module.
    public var topoJsonURL: String? = nil

    /// Mapbox access token (required to plot mapbox trace types) If using an Mapbox Atlas server, set
    /// this option to '' so that plotly.js won't attempt to authenticate to the public Mapbox server.
    public var mapboxAccessToken: String? = nil

    /// Turn all console logging on or off (errors will be thrown) This should ONLY be set via
    /// Plotly.setPlotConfig Available levels: 0: no logs 1: warnings and errors, but not informational
    /// messages 2: verbose logs
    public var logging: Bool? = nil

    /// Sets the length of the undo/redo queue.
    public var queueLength: Int? = nil

    /// Set global transform to be applied to all traces with no specification needed
    public var globalTransforms: Anything? = nil

    /// Which localization should we use? Should be a string like 'en' or 'en-US'.
    public var locale: String? = nil

    /// Localization definitions Locales can be provided either here (specific to one chart) or globally
    /// by registering them as modules.
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
    public var locales: Anything? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
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
    
    /// Creates `Config` object with specified properties.
    /// 
    /// - Parameters:
    ///   - staticPlot: Determines whether the graphs are interactive or not.
    ///   - plotlyServerURL: Sets base URL for the 'Edit in Chart Studio' (aka sendDataToCloud) mode bar
    ///   button and the showLink/sendData on-graph link
    ///   - editable: Determines whether the graph is editable or not.
    ///   - edits:
    ///   - autosizable: Determines whether the graphs are plotted with respect to layout.autosize:true
    ///   and infer its container size.
    ///   - responsive: Determines whether to change the layout size when window is resized.
    ///   - fillFrame: When `layout.autosize` is turned on, determines whether the graph fills the
    ///   container (the default) or the screen (if set to *true*).
    ///   - frameMargins: When `layout.autosize` is turned on, set the frame margins in fraction of the
    ///   graph size.
    ///   - scrollZoom: Determines whether mouse wheel or two-finger scroll zooms is enable.
    ///   - doubleClick: Sets the double click interaction mode.
    ///   - doubleClickDelay: Sets the delay for registering a double-click in ms.
    ///   - showAxisDragHandles: Set to *false* to omit cartesian axis pan/zoom drag handles.
    ///   - showAxisRangeEntryBoxes: Set to *false* to omit direct range entry at the pan/zoom drag
    ///   points, note that `showAxisDragHandles` must be enabled to have an effect.
    ///   - showTips: Determines whether or not tips are shown while interacting with the resulting
    ///   graphs.
    ///   - showLink: Determines whether a link to plot.ly is displayed at the bottom right corner of
    ///   resulting graphs.
    ///   - linkText: Sets the text appearing in the `showLink` link.
    ///   - sendData: If *showLink* is true, does it contain data just link to a plot.ly file?
    ///   - showSources: Adds a source-displaying function to show sources on the resulting graphs.
    ///   - displayModeBar: Determines the mode bar display mode.
    ///   - showSendToCloud: Should we include a ModeBar button, labeled "Edit in Chart Studio", that
    ///   sends this chart to plot.ly or another plotly server as specified by `plotlyServerURL` for
    ///   editing, export, etc? Prior to version 1.43.0 this button was included by default, now it is
    ///   opt-in using this flag.
    ///   - showEditInChartStudio: Same as `showSendToCloud`, but use a pencil icon instead of a
    ///   floppy-disk.
    ///   - modeBarButtonsToRemove: Remove mode bar buttons by name.
    ///   - modeBarButtonsToAdd: Add mode bar button using config objects See
    ///   ./components/modebar/buttons.js for list of arguments.
    ///   - modeBarButtons: Define fully custom mode bar buttons as nested array, where the outer arrays
    ///   represents button groups, and the inner arrays have buttons config objects or names of default
    ///   buttons See ./components/modebar/buttons.js for more info.
    ///   - toImageButtonOptions: Statically override options for toImage modebar button allowed keys are
    ///   format, filename, width, height, scale see ../components/modebar/buttons.js
    ///   - displayLogo: Determines whether or not the plotly logo is displayed on the end of the mode
    ///   bar.
    ///   - watermark: watermark the images with the company's logo
    ///   - plotGlPixelRatio: Set the pixel ratio during WebGL image export.
    ///   - setBackground: Set function to add the background color (i.e.
    ///   - topoJsonURL: Set the URL to topojson used in geo charts.
    ///   - mapboxAccessToken: Mapbox access token (required to plot mapbox trace types) If using an
    ///   Mapbox Atlas server, set this option to '' so that plotly.js won't attempt to authenticate to
    ///   the public Mapbox server.
    ///   - logging: Turn all console logging on or off (errors will be thrown) This should ONLY be set
    ///   via Plotly.setPlotConfig Available levels: 0: no logs 1: warnings and errors, but not
    ///   informational messages 2: verbose logs
    ///   - queueLength: Sets the length of the undo/redo queue.
    ///   - globalTransforms: Set global transform to be applied to all traces with no specification
    ///   needed
    ///   - locale: Which localization should we use? Should be a string like 'en' or 'en-US'.
    ///   - locales: Localization definitions Locales can be provided either here (specific to one chart)
    ///   or globally by registering them as modules.
    public init(staticPlot: Bool? = nil, plotlyServerURL: String? = nil, editable: Bool? = nil,
            edits: Edits? = nil, autosizable: Bool? = nil, responsive: Bool? = nil, fillFrame: Bool? = nil,
            frameMargins: Double? = nil, scrollZoom: ScrollZoom? = nil, doubleClick: DoubleClick? = nil,
            doubleClickDelay: Double? = nil, showAxisDragHandles: Bool? = nil, showAxisRangeEntryBoxes:
            Bool? = nil, showTips: Bool? = nil, showLink: Bool? = nil, linkText: String? = nil, sendData:
            Bool? = nil, showSources: Anything? = nil, displayModeBar: DisplayModeBar? = nil,
            showSendToCloud: Bool? = nil, showEditInChartStudio: Bool? = nil, modeBarButtonsToRemove:
            Anything? = nil, modeBarButtonsToAdd: Anything? = nil, modeBarButtons: Anything? = nil,
            toImageButtonOptions: Anything? = nil, displayLogo: Bool? = nil, watermark: Bool? = nil,
            plotGlPixelRatio: Double? = nil, setBackground: Anything? = nil, topoJsonURL: String? = nil,
            mapboxAccessToken: String? = nil, logging: Bool? = nil, queueLength: Int? = nil,
            globalTransforms: Anything? = nil, locale: String? = nil, locales: Anything? = nil) {
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