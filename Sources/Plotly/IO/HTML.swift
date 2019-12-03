import Foundation
#if canImport(FoundationNetworking)
  import FoundationNetworking  // Required for `String(contentsOf: URL, ...)`
#endif


/// Functions for converting `Figure` object to HTML compatible with _Plotly.js_ library.
struct HTML {

    /// Specifies how a JavaScript library is incorporated in the generated HTML.
    public enum JavaScriptBundleOption {
        /// Include `<script>` tag that contains full source code of the library. Generated HTML
        /// is  larger than the `.online` option but is portable and can be viewed offline.
        case included
        /// Include `<script>` tag that references the library location on a CDN (Content Delivery
        /// Network) server. Generated HTML is smaller than the `.include` case but requires
        /// internet connection for viewing.
        case online
        /// Include `<script>` tag that references external library bundle assumed to reside
        /// in the same directory as the HTML file.
        case directory
        /// Include `<script>` tag with a custom library bundle located in the specified URL.
        case from(url: URL)
        /// Don't include the library. This is useful when the resulting `<div>` will be incorporated
        /// in a larger document where it is already referenced.
        case excluded

        /// Generates HTML `<script>` tag from the library name and CDN server URL.
        /// - Parameter library: Filename of the JavaScript library.
        /// - Parameter CDN:Location of the library on a CDN server.
        func scriptTag(library: String, CDN: URL) -> String {
            switch self {
            case .included:
                if let sourceCode = try? String(contentsOf: CDN, encoding: .utf8) {
                    return "<script type='text/javascript'>\n\(sourceCode)\n</script>"
                } else {
                    return JavaScriptBundleOption.online.scriptTag(library: library, CDN: CDN)
                }
            case .online:
                return "<script src='\(CDN.absoluteURL)'></script>"
            case .directory:
                return "<script src='\(library)'></script>"
            case .from(let url):
                return "<script src='\(url)'></script>"
            case .excluded:
                return ""
            }
        }
    }

    /// Creates HTML  representation of a `Figure` object.
    /// - Parameter figure: `Figure` object representing a _Plotly.js_ figure
    /// - Parameter config: Configuration options of _Plotly.js_ figure
    /// - Parameter plotly: Specifies how is _Plotly.js_ library source code (~3 MB)
    /// incorporated in the HTML output.
    /// - Parameter mathJax: Specifies how is _MathJax.js_ library source code (~40 kB)
    /// incorporated in the HTML output.
    /// - Parameter document: Produce a string containing a complete HTML document starting with the
    /// `<html>`element  instead of a single `<div>` tag.
    static public func create(from figure: Figure,
                              plotly: JavaScriptBundleOption = .included,
                              mathJax: JavaScriptBundleOption = .included,
                              document: Bool = false) throws -> String {

        let plotlyScript = plotly.scriptTag(
            library: "plotly.min.js",
            CDN: URL(string: "https://cdn.plot.ly/plotly-latest.min.js")!)
        let mathJaxScript = mathJax.scriptTag(
            library: "MathJax.js",
            CDN: URL(string: "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG")!)

        let figureJson = try JSON.create(
            from: figure, formatting: [.prettyPrinted, .sortedKeys])

        let div = """
            <div>
                \(plotlyScript)
                \(mathJaxScript)
                <div id='figure' class='plotly-graph-div'></div>
                <script type='text/javascript'>
                    if (document.getElementById('figure')) {{
                        Plotly.react('figure', \(figureJson))
                    }}
                </script>
            </div>
        """
        
        if document {
            return """
                <html>
                <head><meta charset="utf-8" /></head>
                <body>
                    \(div)
                </body>
            """
        } else {
            return div
        }
    }
}
