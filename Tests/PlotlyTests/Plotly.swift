import XCTest
@testable import Plotly


final class PlotlyTests: XCTestCase {

    static var allTests = [
        ("testBarShow", testBarShow),
        ("testScatterShow", testScatterShow),
        ("testExportHTML", testExportHTML),
        ("testExportJSON", testExportJSON),
    ]

    func testBarShow() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Bar(y: y, x: x)]
        let figure = Figure(data: data)
        figure.show()
    }

    func testScatterShow() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(y: y, x: x)]
        let figure = Figure(data: data)
        figure.show()
    }

    func testExportHTML() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(y: y, x: x)]
        let figure = Figure(data: data)

        figure.write(toFile: "included.html", as: .HTML, javaScript: .included)
        figure.write(toFile: "online.html", as: .HTML, javaScript: .online)
        figure.write(toFile: "directory.html", as: .HTML, javaScript: .directory)
    }
    
    func testExportJSON() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(y: y, x: x)]
        let figure = Figure(data: data)

        figure.write(toFile: "export.json", as: .JSON)
    }
}
