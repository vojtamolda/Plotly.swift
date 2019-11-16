import Foundation


/// Swift equivalent of _Plotly.js_ `Figure` object.
struct Figure: Codable {
    
    /// Array of `Trace` objects that are displayed on the  same figure.
    var data: [Scatter]

    /// `Figure` output format specification.
    public enum Format {
        case HTML
        case JSON
    }

    /// Shows  the `Figure` in the default browser available on your OS.
    func show() {
        try! Browser.show(figure: self)
    }
     
    /// Writes representation of the `Figure` object to a URL using the specified format.
    /// - Parameter url: Destination where to save the `Figure` object.
    /// - Parameter format: Output format (HTML, JSON, ...)
    /// - Parameter javaScript: Bundling option (include, online, exclude, ...) for _MathJax_ and
    /// _Plotly_ JavaScript libraries. Used only for HTML format.
    func write(to url: URL, as format: Format = .HTML,
               javaScript bundle: HTML.JavaScriptBundleOption = .included) {
        var output: String
        switch format {
        case .HTML:
            output = try! HTML.create(from: self, plotly: bundle, mathJax: bundle, document: true)
        case .JSON:
            output = try! JSON.create(from: self.data)
        }
        try! output.write(to: url, atomically: true, encoding: .utf8)
    }
}
