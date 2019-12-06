import XCTest
import Plotly


final class PlotlyTests: XCTestCase {

    static var allTests = [
        ("testShow", testShow),
        ("testExport", testExport),
    ]

    func testShow() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let figure = Figure(data: [Scatter(x: x, y: y), Bar(x: x, y: y)])
        figure.show()
    }

    func testExport() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let figure = Figure(data: [Scatter(x: x, y: y), Bar(x: x, y: y)])

        figure.write(toFile: "export.json", as: .JSON)

        figure.write(toFile: "included.html", as: .HTML, javaScript: .included)
        figure.write(toFile: "online.html", as: .HTML, javaScript: .online)
        figure.write(toFile: "directory.html", as: .HTML, javaScript: .directory)
    }
}
