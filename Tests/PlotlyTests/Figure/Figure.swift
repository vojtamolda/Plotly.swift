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
    
    func testAxisUIDCollision() throws {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]

        let scatter = Scatter(x: x, y: y, xAxis: .init(uid: 1))
        let bar = Bar(x: x, y: y, xAxis: .init(uid: 2))
        
        let layout = Layout(
            xAxis: [.init(uid: 1, title: "Hello X")]
        )

        try XCTSkipIf(true)
        let figure = Figure(data: [scatter, bar], layout: layout)
    }
}
