import XCTest
import Plotly


// https://plot.ly/javascript/multiple-axes/
final class MultipleAxesSubplots: XCTestCase {
    static var allTests = [
        ("testTwoYAxes", testTwoYAxes),
        ("testMultipleAxes", testMultipleAxes)
    ]

    // https://plot.ly/javascript/multiple-axes/#two-y-axes
    func testTwoYAxes() {
        let trace1 = Scatter(
            name: "yaxis data",
            x: [1, 2, 3],
            y: [40, 50, 60],
            yAxis: .init(
                uid: 1,
                title: "yaxis title"
            )
        )

        let trace2 = Scatter(
            name: "yaxis2 data",
            x: [2, 3, 4],
            y: [4, 5, 6],
            yAxis: .init(
                uid: 2,
                title: .init(
                    text: "yaxis2 title",
                    font: .init(color: .RGB(148, 103, 189))
                ),
                tickFont: .init(color: .RGB(148, 103, 189)),
                side: .right,
                overlaying: .yAxis(trace1.yAxis)
            )
        )

        let layout = Layout(title: "Double Y Axis Example")

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    // https://plot.ly/javascript/multiple-axes/#multiple-y-axes
    func testMultipleAxes() {
        let trace1 = Scatter(
            name: "yaxis1 data",
            x: [1, 2, 3],
            y: [4, 5, 6],
            yAxis: .init(
                title: .init(
                    text: "yaxis1 title",
                    font: .init(color: ColorList.plotly[0])
                ),
                tickFont: .init(color: ColorList.plotly[0])
            )
        )

        let trace2 = Scatter(
            name: "yaxis2 data",
            x: [2, 3, 4],
            y: [40, 50, 60],
            yAxis: .init(
                title: .init(
                    text: "yaxis2 title",
                    font: .init(color: ColorList.plotly[1])
                ),
                tickFont: .init(color: ColorList.plotly[1]),
                anchor: .free,
                side: .left,
                overlaying: .yAxis(trace1.yAxis),
                position: 0.15
            )
        )

        let trace3 = Scatter(
            name: "yaxis3 data",
            x: [4, 5, 6],
            y: [40000, 50000, 60000],
            yAxis: .init(
                title: .init(
                    text: "yaxis3 title",
                    font: .init(color: ColorList.plotly[2])
                ),
                tickFont: .init(color: ColorList.plotly[2]),
                anchor: .xAxis(trace1.xAxis),
                side: .right,
                overlaying: .yAxis(trace1.yAxis)
            )
        )

        let trace4 = Scatter(
            name: "yaxis4 data",
            x: [5, 6, 7],
            y: [400000, 500000, 600000],
            yAxis: .init(
                title: .init(
                    text: "yaxis4 title",
                    font: .init(color: ColorList.plotly[3])
                ),
                tickFont: .init(color: ColorList.plotly[3]),
                anchor: .free,
                side: .right,
                overlaying: .yAxis(trace1.yAxis),
                position: 0.85
            )
        )

        let layout = Layout(
            title: "Multiple Y-Axes Example",
            width: 800,
            xAxis: .preset(
                domain: [0.3, 0.7]
            )
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }
}
