import Foundation


public struct Figure: Encodable {
    public var data: [Scatter]
    
    func show() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        let encodedData = try! encoder.encode(data)
        let jsonData = String(data: encodedData, encoding: .utf8)!
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

        let tempDirectory = FileManager().temporaryDirectory
        let tempHtmlFile = tempDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("html")
        print(tempHtmlFile)
        try! html.write(to: tempHtmlFile, atomically: true, encoding: .utf8)
        
        let env = URL(fileURLWithPath: "/usr/bin/env")
        let _ = try! Process.run(env, arguments: ["open", tempHtmlFile.absoluteString])
    }
}
