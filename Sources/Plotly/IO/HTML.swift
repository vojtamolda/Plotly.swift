import Foundation


public struct HTML {

    /// Specifies options how _plotly.js_ library can be incorporated in the generated HTML output.
    public enum JsLibraryInclude<String> {
        case yes /// Include `<script>` tag that contains full source code of _plotly.js_. Generated HTML  is about 3 MB larger than the .online option but it is more portable and runs completely offline.
        case no /// Don't include _plotly.js_. This is useful when the resulting div will be incorporated inside a document that already loads _plotly.js_.
        case online /// Include `<script>` tag that references the _plotly.js_ from the CDN. Generated HTML is about 3 MB smaller than the .yes case but requires internet connection to function.
        case directory /// Include `<script>` tag that references external _plotly.min.js_ bundle assumed to reside in the same directory as the HTML file.
        case url(url: String) /// Include `<script>` tag with a custom bundle of _plotly.min.js_ loaded from the specified URL.
    }
    
    /// Specifies options how _MathJax.js_ library can be incorporated in the generated HTML output.
    public enum MathJaxInclude<String> {
        case yes /// Include `<script>` tag that contains full source code of _MathJax.js_. Generated HTML  is about 3 MB larger than the .online option but it is more portable and runs completely offline.
        case no /// Don't include _plotly.js_. This is useful when the resulting div will be incorporated inside a document that already loads _plotly.js_.
    }

    /**
     Create HTML `<div>` string representation from a `Figure`.
     - parameter figure: Figure object representing a Plotly.js figure
     - parameter config: Configuration options of Plotly.js figure
     - parameter includePlotlyJs: Specifies how is _plotly.js_ library source code (~ 3 MB) is incorporated in the output HTML string.
     - parameter includeMathJax: Specifies how is _MathJax.js_ library source code (~ 3 MB) is incorporated in the output HTML string.
     - parameter full: Produce a string containing a complete HTML document starting with the `<html>`element  instead of a single `<div>` tag.
    */
    static public func create(from figure: Figure,
                              includePlotly: JsLibraryInclude <Any> = .yes, includeMathJax: JsLibraryInclude <Any> = .yes,
                              full: Bool=false, defaultWidth: Int?=nil, defaultHeight: Int?=nil) -> String {
        
        let jsonData = JSON.create(from: figure.data)
        let html = """
        <head>
          <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        </head>
        <body>
          <div id="plot"><!-- Chart will be drawn here --></div>
          <script>
            var data = \(jsonData);
            Plotly.newPlot('plot', data);
          </script>
        </body>
        """
        return html
    }
    
}
