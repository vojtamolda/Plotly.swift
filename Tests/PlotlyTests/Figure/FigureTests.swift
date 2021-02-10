import XCTest
import Plotly


final class FigureTests: XCTestCase {
    static var allTests = [
        ("testShow", testShow),
        ("testExport", testExport),
        ("testAxisUIDCollision", testAxisUIDCollision),
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

        output(figure)
    }
}
