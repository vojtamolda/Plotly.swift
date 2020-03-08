import XCTest
import Plotly


/// https://plot.ly/javascript/subplots/
final class Subplots: XCTestCase {
    static var allTests = [
        ("testSimpleSubplot", testSimpleSubplot),
        ("testCustomSizedSubplot", testCustomSizedSubplot)
    ]

    /// https://plot.ly/javascript/subplots/#simple-subplot
    func testSimpleSubplot() {
        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [4, 5, 6]
            //xAxis: .init(),
            //yAxis: .init()
        )

        let trace2 = Scatter(
            x: [20, 30, 40],
            y: [50, 60, 70],
            xAxis: .init(uid: 2),
            yAxis: .init(uid: 2)
        )

        let layout = Layout(
            grid: .init(rows: 1, columns: 2, pattern: .independent)
        )

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/subplots/#custom-sized-subplot
    func testCustomSizedSubplot() {
        let layout = Layout()
        // FIXME: Anchor layout.yAxis[1].anchor = layout.xAxis[1].anchor

        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [4, 5, 6],
            xAxis: .init(uid: 1, domain: [0, 0.7]),
            yAxis: .init(uid: 1)
        )

        let trace2 = Scatter(
            x: [20, 30, 40],
            y: [50, 60, 70],
            xAxis: .init(uid: 2, domain: [0.8, 1]),
            yAxis: .init(uid: 2)
        )
        trace2.yAxis.anchor = .xAxis(trace2.xAxis)

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }
}
