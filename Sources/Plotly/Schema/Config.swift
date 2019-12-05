struct Config: Encodable {
    /// Determines whether the graphs are interactive or not. If *false*, no interactivity, for export or image generation.
    var staticPlot: Bool?

    /// Sets base URL for the 'Edit in Chart Studio' (aka sendDataToCloud) mode bar button and the showLink/sendData on-graph link
    var plotlyServerURL: String?

    /// Determines whether the graph is editable or not. Sets all pieces of `edits` unless a separate `edits` config item overrides individual parts.
    var editable: Bool?

    struct Edits: Encodable {
        /// Determines if the main anchor of the annotation is editable. The main anchor corresponds to the text (if no arrow) or the arrow (which drags the whole thing leaving the arrow length & direction unchanged).
        var annotationPosition: Bool?
    
        /// Has only an effect for annotations with arrows. Enables changing the length and direction of the arrow.
        var annotationTail: Bool?
    
        /// Enables editing annotation text.
        var annotationText: Bool?
    
        /// Enables editing axis title text.
        var axisTitleText: Bool?
    
        /// Enables moving colorbars.
        var colorbarPosition: Bool?
    
        /// Enables editing colorbar title text.
        var colorbarTitleText: Bool?
    
        /// Enables moving the legend.
        var legendPosition: Bool?
    
        /// Enables editing the trace name fields from the legend
        var legendText: Bool?
    
        /// Enables moving shapes.
        var shapePosition: Bool?
    
        /// Enables editing the global layout title.
        var titleText: Bool?
    
    }
    var edits: Edits?

    /// Determines whether the graphs are plotted with respect to layout.autosize:true and infer its container size.
    var autosizable: Bool?

    /// Determines whether to change the layout size when window is resized. In v2, this option will be removed and will always be true.
    var responsive: Bool?

    /// When `layout.autosize` is turned on, determines whether the graph fills the container (the default) or the screen (if set to *true*).
    var fillFrame: Bool?

    /// When `layout.autosize` is turned on, set the frame margins in fraction of the graph size.
    var frameMargins: Double?

    /// Determines whether mouse wheel or two-finger scroll zooms is enable. Turned on by default for gl3d, geo and mapbox subplots (as these subplot types do not have zoombox via pan), but turned off by default for cartesian subplots. Set `scrollZoom` to *false* to disable scrolling for all subplots.
    struct Scrollzoom: OptionSet, Encodable {
        let rawValue: Int
    
        static let cartesian = Scrollzoom(rawValue: 1 << 0)
        static let gl3d = Scrollzoom(rawValue: 1 << 1)
        static let geo = Scrollzoom(rawValue: 1 << 2)
        static let mapbox = Scrollzoom(rawValue: 1 << 3)
    
        init(rawValue: Int) { self.rawValue = rawValue }
    
        func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["cartesian"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["gl3d"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["geo"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["mapbox"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines whether mouse wheel or two-finger scroll zooms is enable. Turned on by default for gl3d, geo and mapbox subplots (as these subplot types do not have zoombox via pan), but turned off by default for cartesian subplots. Set `scrollZoom` to *false* to disable scrolling for all subplots.
    var scrollZoom: Scrollzoom?

    /// Sets the double click interaction mode. Has an effect only in cartesian plots. If *false*, double click is disable. If *reset*, double click resets the axis ranges to their initial values. If *autosize*, double click set the axis ranges to their autorange values. If *reset+autosize*, the odd double clicks resets the axis ranges to their initial values and even double clicks set the axis ranges to their autorange values.
    enum Doubleclick: String, Encodable {
        case no
        case reset
        case autosize
        case resetautosize
    }
    /// Sets the double click interaction mode. Has an effect only in cartesian plots. If *false*, double click is disable. If *reset*, double click resets the axis ranges to their initial values. If *autosize*, double click set the axis ranges to their autorange values. If *reset+autosize*, the odd double clicks resets the axis ranges to their initial values and even double clicks set the axis ranges to their autorange values.
    var doubleClick: Doubleclick?

    /// Sets the delay for registering a double-click in ms. This is the time interval (in ms) between first mousedown and 2nd mouseup to constitute a double-click. This setting propagates to all on-subplot double clicks (except for geo and mapbox) and on-legend double clicks.
    var doubleClickDelay: Double?

    /// Set to *false* to omit cartesian axis pan/zoom drag handles.
    var showAxisDragHandles: Bool?

    /// Set to *false* to omit direct range entry at the pan/zoom drag points, note that `showAxisDragHandles` must be enabled to have an effect.
    var showAxisRangeEntryBoxes: Bool?

    /// Determines whether or not tips are shown while interacting with the resulting graphs.
    var showTips: Bool?

    /// Determines whether a link to plot.ly is displayed at the bottom right corner of resulting graphs. Use with `sendData` and `linkText`.
    var showLink: Bool?

    /// Sets the text appearing in the `showLink` link.
    var linkText: String?

    /// If *showLink* is true, does it contain data just link to a plot.ly file?
    var sendData: Bool?

    /// Adds a source-displaying function to show sources on the resulting graphs.
    var showSources: Anything?

    /// Determines the mode bar display mode. If *true*, the mode bar is always visible. If *false*, the mode bar is always hidden. If *hover*, the mode bar is visible while the mouse cursor is on the graph container.
    enum Displaymodebar: String, Encodable {
        case hover
        case yes
        case no
    }
    /// Determines the mode bar display mode. If *true*, the mode bar is always visible. If *false*, the mode bar is always hidden. If *hover*, the mode bar is visible while the mouse cursor is on the graph container.
    var displayModeBar: Displaymodebar?

    /// Should we include a ModeBar button, labeled "Edit in Chart Studio", that sends this chart to plot.ly or another plotly server as specified by `plotlyServerURL` for editing, export, etc? Prior to version 1.43.0 this button was included by default, now it is opt-in using this flag. Note that this button can (depending on `plotlyServerURL`) send your data to an external server. However that server does not persist your data until you arrive at the Chart Studio and explicitly click "Save".
    var showSendToCloud: Bool?

    /// Same as `showSendToCloud`, but use a pencil icon instead of a floppy-disk. Note that if both `showSendToCloud` and `showEditInChartStudio` are turned, only `showEditInChartStudio` will be honored.
    var showEditInChartStudio: Bool?

    /// Remove mode bar buttons by name. See ./components/modebar/buttons.js for the list of names.
    var modeBarButtonsToRemove: Anything?

    /// Add mode bar button using config objects See ./components/modebar/buttons.js for list of arguments.
    var modeBarButtonsToAdd: Anything?

    /// Define fully custom mode bar buttons as nested array, where the outer arrays represents button groups, and the inner arrays have buttons config objects or names of default buttons See ./components/modebar/buttons.js for more info.
    var modeBarButtons: Anything?

    /// Statically override options for toImage modebar button allowed keys are format, filename, width, height, scale see ../components/modebar/buttons.js
    var toImageButtonOptions: Anything?

    /// Determines whether or not the plotly logo is displayed on the end of the mode bar.
    var displaylogo: Bool?

    /// watermark the images with the company's logo
    var watermark: Bool?

    /// Set the pixel ratio during WebGL image export. This config option was formerly named `plot3dPixelRatio` which is now deprecated.
    var plotGlPixelRatio: Double?

    /// Set function to add the background color (i.e. `layout.paper_color`) to a different container. This function take the graph div as first argument and the current background color as second argument. Alternatively, set to string *opaque* to ensure there is white behind it.
    var setBackground: Anything?

    /// Set the URL to topojson used in geo charts. By default, the topojson files are fetched from cdn.plot.ly. For example, set this option to: <path-to-plotly.js>/dist/topojson/ to render geographical feature using the topojson files that ship with the plotly.js module.
    var topojsonURL: String?

    /// Mapbox access token (required to plot mapbox trace types) If using an Mapbox Atlas server, set this option to '' so that plotly.js won't attempt to authenticate to the public Mapbox server.
    var mapboxAccessToken: String?

    /// Turn all console logging on or off (errors will be thrown) This should ONLY be set via Plotly.setPlotConfig Available levels: 0: no logs 1: warnings and errors, but not informational messages 2: verbose logs
    var logging: Bool?

    /// Sets the length of the undo/redo queue.
    var queueLength: Int?

    /// Set global transform to be applied to all traces with no specification needed
    var globalTransforms: Anything?

    /// Which localization should we use? Should be a string like 'en' or 'en-US'.
    var locale: String?

    /// Localization definitions Locales can be provided either here (specific to one chart) or globally by registering them as modules. Should be an object of objects {locale: {dictionary: {...}, format: {...}}} {   da: {       dictionary: {'Reset axes': 'Nulstil aksler', ...},       format: {months: [...], shortMonths: [...]}   },   ... } All parts are optional. When looking for translation or format fields, we look first for an exact match in a config locale, then in a registered module. If those fail, we strip off any regionalization ('en-US' -> 'en') and try each (config, registry) again. The final fallback for translation is untranslated (which is US English) and for formats is the base English (the only consequence being the last fallback date format %x is DD/MM/YYYY instead of MM/DD/YYYY). Currently `grouping` and `currency` are ignored for our automatic number formatting, but can be used in custom formats.
    var locales: Anything?

}