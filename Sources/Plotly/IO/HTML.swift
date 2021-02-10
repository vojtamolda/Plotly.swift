import Foundation
#if canImport(FoundationNetworking)
  import FoundationNetworking  // Required for `String(contentsOf: URL, ...)`
#endif


/// Functions for converting `Figure`s to HTML documents rendered via _Plotly.js_.
public struct HTML {
    /// Option how a JavaScript library is incorporated in a HTML document.
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
        /// in a larger document where the library is already used.
        case excluded

        /// Generates HTML `<script>` tag from the library name and CDN server URL.
        /// - Parameters:
        ///   - library: Filename of the JavaScript library.
        ///   - CDN:Location of the library on a CDN server.
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

    /// Creates HTML document that contains the `Figure`.
    ///
    /// - Parameters:
    ///   - figure: `Figure` object representing a _Plotly.js_ chart.
    ///   - plotly: Specifies how is _Plotly.js_ library source code incorporated in the HTML output. Size of the minified library
    ///   is about 3 MB.
    ///   - mathJax: Specifies how is _MathJax.js_ library source code incorporated in the HTML output. Size of the
    ///   minified library is about 40 kB.
    ///   - document: Flag indicating whether to create a complete HTML document starting with the `<html>`element
    ///               or only a single `<div>` holding the chart.
    static public func create(from figure: Figure,
                              plotly: JavaScriptBundleOption = .included,
                              mathJax: JavaScriptBundleOption = .included,
                              document: Bool = false) throws -> String {
        let plotlyScript = plotly.scriptTag(
            library: "plotly.min.js",
            CDN: URL(string: "https://cdn.plot.ly/plotly-latest.min.js")!
        )
        let mathJaxScript = mathJax.scriptTag(
            library: "MathJax.js",
            CDN: URL(string: "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG")!
        )

        let figureUuid = UUID()
        let figureJson = try JSON.create(from: figure)

        let figureDiv = """
        <div id='\(figureUuid)'></div>
        \(plotlyScript)
        \(mathJaxScript)
        <script>
          Plotly.react('\(figureUuid)',
            \(figureJson)
          )
        </script>
        """

        if document {
            return """
            <!doctype html>
            <html>
            <head>
              <meta charset='utf-8' />
            <title>\(figure.layout.title?.text ?? "")</title>
            </head>
            <body>
              \(figureDiv)
            </body>
            </html>
            """
        } else {
            return figureDiv
        }
    }
}
