import Foundation


/// Swift equivalent of _Plotly.js_ `Figure` object.
struct Figure: Codable {
    
    /// Array of `Trace` objects that are displayed on the  same figure.
    var data: [Scatter]
    
    let layout = ""
    let config = ""

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
    /// - Parameter toFile: File where to save the `Figure` object.
    /// - Parameter as: Output format (HTML, JSON, ...)
    /// - Parameter javaScript: Bundling option (include, online, exclude, ...) for _MathJax_ and
    /// _Plotly_ JavaScript libraries. Used only for HTML format.
    ///
    /// - Warning: Calling may take a few seconds because the function needs internet access.
    /// Current implementation of `.included` option downloads the library from the CDN
    /// server and returns `<script>` tag with the file content.
    func write<T>(toFile path: T, as format: Format = .HTML,
                  javaScript bundle: HTML.JavaScriptBundleOption = .online)
        where T : StringProtocol {

        switch format {
        case .HTML:
            let html = try! HTML.create(from: self, plotly: bundle, mathJax: bundle, document: true)
            try! html.write(toFile: path, atomically: true, encoding: .utf8)
        case .JSON:
            let json = try! JSON.create(from: self, formatting: [.prettyPrinted, .sortedKeys]).data
            try! json.write(toFile: path, atomically: true, encoding: .utf8)
        }
    }
}
