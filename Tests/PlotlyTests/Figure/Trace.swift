import XCTest
import Plotly


final class TraceTests: XCTestCase {
    static var allTests = [
        ("testShow", testShow)
    ]

    func testShow() {
        let figure = Scatter(
            x: [1.0, 2.0, 3.0, 4.0],
            y: [10.0, 15.0, 13.0, 17.0]
        ).show(
            config: Config(staticPlot: true),
            layout: Layout(title: "Quick Trace.show() Example")
        )
        output(figure)
    }
}
