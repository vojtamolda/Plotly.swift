import Foundation


/// Abstraction layer for opening URLs and showing browser windows on different platforms.
struct Browser {
    
    /// Opens the specified URL in the default browser available on your OS.
    static func open(url: URL) throws {
        let env = URL(fileURLWithPath: "/usr/bin/env")
        let browser = try Process.run(env, arguments: ["open", url.absoluteString])
        browser.waitUntilExit()
    }

    /// Exports the `Figure` to a temporary HTML file and displays it using the default browser available on your OS.
    static func show(figure: Figure) throws {
        let htmlDocument = try HTML.create(from: figure, document: true)

        let tempDirectory = FileManager().temporaryDirectory
        let tempHtmlFile = tempDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("html")
        try! htmlDocument.write(to: tempHtmlFile, atomically: true, encoding: .utf8)

        try Browser.open(url: tempHtmlFile)
    }

}
