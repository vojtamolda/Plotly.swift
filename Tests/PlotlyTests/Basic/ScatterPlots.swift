import XCTest
import Plotly


/// https://plot.ly/javascript/line-charts/
final class ScatterPlots: XCTestCase {
    static var allTests = [
        ("testLineAndScatterPlot", testLineAndScatterPlot),
        ("testDataLabelsHover", testDataLabelsHover),
        ("testDataLabelsOnThePlot", testDataLabelsOnThePlot),
        ("testScatterPlotWithAColorDimension", testScatterPlotWithAColorDimension)
    ]

    /// https://plot.ly/javascript/line-and-scatter/#line-and-scatter-plot
    func testLineAndScatterPlot() {
        let trace1 = Scatter(
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17],
            mode: .markers
        )
        let trace2 = Scatter(
            x: [2, 3, 4, 5],
            y: [16, 5, 11, 9],
            mode: .lines
        )
        let trace3 = Scatter(
            x: [1, 2, 3, 4],
            y: [12, 9, 15, 12],
            mode: [.lines, .markers]
        )
        let figure = Figure(data: [trace1, trace2, trace3])
        output(figure)
    }

    /// https://plot.ly/javascript/line-and-scatter/#data-labels-hover
    func testDataLabelsHover() {
        let trace1 = Scatter(
            name: "Team A",
            x: [1, 2, 3, 4, 5],
            y: [1, 6, 3, 6, 1],
            text: ["A-1", "A-2", "A-3", "A-4", "A-5"],
            mode: .markers,
            marker: Shared.GradientMarker(size: 12)
        )
        let trace2 = Scatter(
            name: "Team B",
            x: [1.5, 2.5, 3.5, 4.5, 5.5],
            y: [4, 1, 7, 1, 4],
            text: ["B-a", "B-b", "B-c", "B-d", "B-e"],
            mode: .markers,
            marker: Shared.GradientMarker(size: 12)
        )
        let layout = Layout(
            title: "Data Labels Hover",
            xAxis: Layout.XAxis(range: [0.75, 5.25]),
            yAxis: Layout.YAxis(range: [0, 8])
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-and-scatter/#data-labels-on-the-plot
    func testDataLabelsOnThePlot() {
        let trace1 = Scatter(
            name: "Team A",
            x: [1, 2, 3, 4, 5],
            y: [1, 6, 3, 6, 1],
            text: ["A-1", "A-2", "A-3", "A-4", "A-5"],
            mode: [.markers, .text],
            marker: Shared.GradientMarker(size: 12),
            textPosition: .bottomCenter,
            textFont: Shared.Font(family: "Raleway, sans-serif")
        )
        let trace2 = Scatter(
            name: "Team B",
            x: [1.5, 2.5, 3.5, 4.5, 5.5],
            y: [4, 1, 7, 1, 4],
            text: ["B-a", "B-b", "B-c", "B-d", "B-e"],
            mode: [.markers, .text],
            marker: Shared.GradientMarker(size: 12),
            textPosition: .bottomCenter,
            textFont: Shared.Font(family: "Times New Roman")
        )
        let layout = Layout(
            title: "Data Labels on the Plot",
            xAxis: Layout.XAxis(range: [0.75, 5.25]),
            yAxis: Layout.YAxis(range: [0, 8]),
            legend: Layout.Legend(
                font: Shared.Font(family: "Arial, sans-serif", size: 20, color: .named("grey")),
                y: 0.5
            )
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-and-scatter/#scatter-plot-with-a-color-dimension
    func testScatterPlotWithAColorDimension() {
        let trace1 = Scatter(
            x: nil as [Int]?,
            y: [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 40,
                color: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
                        21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39]
            )
        )
        let layout = Layout(title: "Scatter Plot with a Color Dimension")
        let figure = Figure(data: [trace1], layout: layout)
        output(figure)
    }
}
