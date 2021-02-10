import XCTest
import Plotly


// https://plot.ly/javascript/insets/
final class InsetPlots: XCTestCase {
    static var allTests = [
        ("testSimpleInsetPlot", testSimpleInsetPlot)
    ]

    // https://plot.ly/javascript/insets/#simple-inset-graph
    func testSimpleInsetPlot() {
        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [4, 3, 2],
            xAxis: .init(),
            yAxis: .init()
        )
        trace1.xAxis.anchor = .yAxis(trace1.yAxis)
        trace1.yAxis.anchor = .xAxis(trace1.xAxis)

        let trace2 = Scatter(
            x: [20, 30, 40],
            y: [30, 40, 50],
            xAxis: .init(domain: [0.6, 0.95]),
            yAxis: .init(domain: [0.6, 0.95])
        )
        trace2.xAxis.anchor = .yAxis(trace2.yAxis)
        trace2.yAxis.anchor = .xAxis(trace2.xAxis)

        let layout = Layout()

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }
}
