import Foundation


/// Functions for converting `Figure` object to HTML compatible with _Plotly.js_ library.
struct HTML {

    /// Specifies how a JavaScript library can be incorporated in the generated HTML output.
    public enum JavaScriptBundleOption {
        /// Include `<script>` tag that contains full source code of the library. Generated HTML
        /// is about arger than the .online option but it is more portable and runs completely offline.
        case included
        /// Don't include the library. This is useful when the resulting div will be incorporated
        /// inside a document that already loads it.
        case online
        /// Include `<script>` tag that references external library bundle assumed to reside
        /// in the same directory as the HTML file.
        case excluded
        /// Include `<script>` tag that references the library location on a CDN server. Generated
        /// HTML is smaller than the .yes case but requires internet connection to work.
        case directory
        /// Include `<script>` tag with a custom library bundle located in the specified URL.
        case custom(url: String)

        /// Generates HTML `<script>` tag from the library name and CDN server URL.
        func scriptTag(library: String, CDN: URL) -> String {
            var scriptTag: String

            switch self {
            case .included:
                // TODO: Get content of the ploly.min.js somewhere
                let content = ""
                scriptTag = "<script>\(content)</script>"
            case .online:
                scriptTag = "<script href='\(CDN)'></script>"
            case .excluded:
                scriptTag = ""
            case .directory:
                scriptTag = "<script href='\(library)'></script>"
            case .custom:
                scriptTag = "<script href='\(CDN)'></script>"
            }
            return scriptTag
        }
    }

    /// Creates HTML  representation of a `Figure` object.
    /// - Parameter figure: `Figure` object representing a _Plotly.js_ figure
    /// - Parameter config: Configuration options of _Plotly.js_ figure
    /// - Parameter includePlotlyJs: Specifies how is _Plotly.js_ library source code (~ 3 MB)
    /// incorporated in the HTML output.
    /// - Parameter includeMathJax: Specifies how is _MathJax.js_ library source code (~ 40 kB)
    /// incorporated in the HTML output.
    /// - Parameter document: Produce a string containing a complete HTML document starting with the
    /// `<html>`element  instead of a single `<div>` tag.
    /// - Parameter width: Default width property of the figure `<div>` tag.
    /// - Parameter height: Default height property of the figure `<div>` tag.
    static public func create(
        from figure: Figure,
        plotly: JavaScriptBundleOption = .included, mathJax: JavaScriptBundleOption = .included,
        document: Bool = false, width: Int? = nil, height: Int? = nil)
        throws -> String {
        
        let plotlyScriptTag = plotly.scriptTag(
            library: "plotly.min.js", CDN: URL(string: "https://cdn.plot.ly/plotly-latest.min.js")!)
        let mathJaxScriptTag = mathJax.scriptTag(
            library: "MathJax.js", CDN: URL(string: "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG")!)

        let data = try JSON.create(from: figure.data, formatting: .prettyPrinted)
        
        let html = """
        <head>
          <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        </head>
        <body>
          <div id="plot"><!-- Chart will be drawn here --></div>
          <script>
            var data = \(data);
            Plotly.newPlot('plot', data);
          </script>
        </body>
        """
        return html
    }
}
