import XCTest
import Plotly


final class TraceTests: XCTestCase {
    static var allTests = [
        ("testShow", testShow)
    ]

    func testShow() throws {
        let figure = try Scatter(
            x: [1.0, 2.0, 3.0, 4.0],
            y: [10.0, 15.0, 13.0, 17.0]
        ).show(
            layout: Layout(title: "Quick Trace.show() Example"),
            config: Config(staticPlot: true)
        )
        output(figure)
    }
}
