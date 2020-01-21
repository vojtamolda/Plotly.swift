import XCTest
import Plotly


/// https://plot.ly/javascript/bar-charts/
final class BarCharts: XCTestCase {

    static var allTests = [
        ("testBasicBarChart", testBasicBarChart),
        ("testGroupedBarChart", testGroupedBarChart)
    ]

    /// https://plot.ly/javascript/bar-charts/#basic-bar-chart
    func testBasicBarChart() {
        let trace = Bar(
            x: ["giraffes", "orangutans", "monkeys"],
            y: [20, 14, 23]
        )
        let figure = Figure(data: [trace])
        figure.write(toFile: "basicBarChart.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#grouped-bar-chart
    func testGroupedBarChart() {
        let trace1 = Bar(
            name: "SF Zoo",        
            x: ["giraffes", "orangutans", "monkeys"],
            y: [20, 14, 23]
        )
        let trace2 = Bar(
            name: "LA Zoo",
            x: ["giraffes", "orangutans", "monkeys"],
            y: [12, 18, 29]
        )
        let layout = Layout(
            // FIXME: barMode: .group
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        figure.write(toFile: "groupedBarChart.html", as: .HTML)
    }
}
