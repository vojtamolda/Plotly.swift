import Foundation


public struct Figure: Encodable {
    public var data: [Scatter]

    public enum Format {
        case HTML
        case JSON
    }

    /// Exports the `Figure` into a temporary HTML file and displays it using the default browser available on your OS.
    func show() {
        let htmlDocument = HTML.create(from: self)
        
        let tempDirectory = FileManager().temporaryDirectory
        let tempHtmlFile = tempDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("html")
        try! htmlDocument.write(to: tempHtmlFile, atomically: true, encoding: .utf8)

        Browser.open(url: tempHtmlFile)
    }
     
    /// Writes representation of the `Figure` object to a URL specified by url using the specified format.
    func write(to url: URL, as format: Format = .HTML) throws {
        var output: String
        switch format {
        case .HTML:
            output = HTML.create(from: self)
        case .JSON:
            output = JSON.create(from: self.data)
        }
        try output.write(to: url, atomically: true, encoding: .utf8)
    }
}
