import XCTest
import Plotly


// https://plot.ly/javascript/subplots/
final class Subplots: XCTestCase {
    static var allTests = [
        ("testSimpleSubplot", testSimpleSubplot),
        ("testCustomSizedSubplot", testCustomSizedSubplot),
        ("testMultipleSubplots", testMultipleSubplots),
        ("testSubplotsWithSharedAxes", testSubplotsWithSharedAxes),
        ("testStackedSubplots", testStackedSubplots),
        ("testStackedSubplotsWithSharedXAxis", testStackedSubplotsWithSharedXAxis),
        ("testMultipleCustomSizedSubplots", testMultipleCustomSizedSubplots)
    ]

    // https://plot.ly/javascript/subplots/#simple-subplot
    func testSimpleSubplot() {
        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [4, 5, 6],
            xAxis: .init(uid: 1),
            yAxis: .init(uid: 1)
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

        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [4, 5, 6],
            xAxis: .init(uid: 1, domain: [0, 0.7]),
            yAxis: .init(uid: 1)
        )

        let trace2 = Scatter(
            x: [20, 30, 40],
            y: [50, 60, 70],
            xAxis: .init(domain: [0.8, 1]),
            yAxis: .init()
        )
        trace2.yAxis.anchor = .xAxis(trace2.xAxis)
        trace2.xAxis.anchor = .yAxis(trace2.yAxis)

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/subplots/#multiple-subplots
    func testMultipleSubplots() {
        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [4, 5, 6],
            xAxis: .init(uid: 1),
            yAxis: .init(uid: 1)
        )
        let trace2 = Scatter(
            x: [20, 30, 40],
            y: [50, 60, 70],
            xAxis: .init(uid: 2),
            yAxis: .init(uid: 2)
        )
        let trace3 = Scatter(
            x: [300, 400, 500],
            y: [600, 700, 800],
            xAxis: .init(uid: 3),
            yAxis: .init(uid: 3)
        )
        let trace4 = Scatter(
            x: [4000, 5000, 6000],
            y: [7000, 8000, 9000],
            xAxis: .init(uid: 4),
            yAxis: .init(uid: 4)
        )

        let layout = Layout(
            grid: .init(
                rows: 2,
                columns: 2,
                pattern: .independent
            )
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/subplots/#subplots-with-shared-axes
    func testSubplotsWithSharedAxes() {
        let trace1 = Scatter(
            x: [1, 2, 3],
            y: [2, 3, 4],
            xAxis: .init(uid: 1),
            yAxis: .init(uid: 1)
        )
        trace1.xAxis.anchor = .yAxis(trace1.yAxis)
        trace1.yAxis.anchor = .xAxis(trace1.xAxis)

        let trace2 = Scatter(
            x: [20, 30, 40],
            y: [5, 5, 5],
            xAxis: .init(uid: 2),
            yAxis: trace1.yAxis
        )
        let trace3 = Scatter(
            x: [2, 3, 4],
            y: [600, 700, 800],
            xAxis: trace1.xAxis,
            yAxis: .init(uid: 3)
        )
        let trace4 = Scatter(
            x: [4000, 5000, 6000],
            y: [7000, 8000, 9000],
            xAxis: .init(uid: 4),
            yAxis: .init(uid: 4)
        )

        let layout = Layout(
            grid: .init(
                rows: 2,
                rowOrder: .bottomToTop,
                columns: 2,
                // FIXME: This is extremely ugly API.
                // Plotly.js also seems to have a bug where "x1y1" doesn't work whereas "xy" does.
                subplots: .nested([
                    .string(["xy", "x2y"]),
                    .string(["xy3", "x4y4"])
                ]),
                pattern: .independent
            )
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/subplots/#stacked-subplots
    func testStackedSubplots() {
        let trace1 = Scatter(
            x: [0, 1, 2],
            y: [10, 11, 12],
            xAxis: .init(uid: 1),
            yAxis: .init(uid: 1)
        )
        let trace2 = Scatter(
            x: [2, 3, 4],
            y: [100, 110, 120],
            xAxis: .init(uid: 2),
            yAxis: .init(uid: 2)
        )
        let trace3 = Scatter(
            x: [3, 4, 5],
            y: [1000, 1100, 1200],
            xAxis: .init(uid: 3),
            yAxis: .init(uid: 3)
        )

        let layout = Layout(
            grid: .init(
                rows: 3,
                rowOrder: .bottomToTop,
                columns: 1,
                pattern: .independent
            )
        )

        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/subplots/#stacked-subplots-with-a-shared-x-axis
    func testStackedSubplotsWithSharedXAxis() {
        let trace1 = Scatter(
            x: [0, 1, 2],
            y: [10, 11, 12],
            yAxis: .init(uid: 1, domain: [0, 0.33])
        )
        let trace2 = Scatter(
            x: [2, 3, 4],
            y: [100, 110, 120],
            yAxis: .init(uid: 2, domain: [0.33, 0.66])
        )
        let trace3 = Scatter(
            x: [3, 4, 5],
            y: [1000, 1100, 1200],
            yAxis: .init(uid: 3, domain: [0.66, 1])
        )

        let layout = Layout(
            legend: .init(traceOrder: .reversed)
        )

        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/subplots/#multiple-custom-sized-subplots
    func testMultipleCustomSizedSubplots() {
        let trace1 = Scatter(
            name: "(1, 1)",
            x: [1, 2],
            y: [1, 2],
            xAxis: .init(uid: 1, domain: [0, 0.45]),
            yAxis: .init(uid: 1, domain: [0.5, 1])
        )
        trace1.yAxis.anchor = .xAxis(trace1.xAxis)
        trace1.xAxis.anchor = .yAxis(trace1.yAxis)

        let trace2 = Scatter(
            name: "(1, 2)",
            x: [1, 2],
            y: [1, 2],
            xAxis: .init(uid: 2, domain: [0.55, 1]),
            yAxis: .init(uid: 2, domain: [0.8, 1])
        )
        trace2.yAxis.anchor = .xAxis(trace2.xAxis)
        trace2.xAxis.anchor = .yAxis(trace2.yAxis)

        let trace3 = Scatter(
            name: "(1, 2)",
            x: [1, 2],
            y: [1, 2],
            xAxis: .init(uid: 3, domain: [0.55, 1]),
            yAxis: .init(uid: 3, domain: [0.5, 0.75])
        )
        trace3.yAxis.anchor = .xAxis(trace3.xAxis)
        trace3.xAxis.anchor = .yAxis(trace3.yAxis)

        let trace4 = Scatter(
            name: "(2, *)",
            x: [1, 2],
            y: [1, 2],
            xAxis: .init(uid: 4, domain: [0, 1]),
            yAxis: .init(uid: 4, domain: [0, 0.45])
        )
        trace4.yAxis.anchor = .xAxis(trace4.xAxis)
        trace4.xAxis.anchor = .yAxis(trace4.yAxis)

        let layout = Layout(
            title: "Multiple Custom Sized Subplots"
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }
}
