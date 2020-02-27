import XCTest
import Plotly


/// https://plot.ly/javascript/pie-charts/
final class PieCharts: XCTestCase {
    static var allTests = [
        ("testBasicPieChart", testBasicPieChart),
        ("testPieChartSubplots", testPieChartSubplots),
        ("testDonutChart", testDonutChart),
        ("testAutomaticallyAdjustMargins", testAutomaticallyAdjustMargins)
    ]

    /// https://plot.ly/javascript/pie-charts/#basic-pie-chart
    func testBasicPieChart() {
        let trace = Pie(
            labels: ["Residential", "Non-Residential", "Utility"],
            values: [19, 26, 55]
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/pie-charts/#pie-chart-subplots
    func testPieChartSubplots() {
        let allLabels = ["1st", "2nd", "3rd", "4th", "5th"];
        let allValues = [
            [38, 27, 18, 10, 7],
            [28, 26, 21, 15, 10],
            [38, 19, 16, 14, 13],
            [31, 24, 19, 18, 8]
        ]
        let ultimateColors: [[Color]] = [
            [.RGB(56, 75, 126), .RGB(18, 36, 37), .RGB(34, 53, 101), .RGB(36, 55, 57), .RGB(6, 4, 4)],
            [.RGB(177, 127, 38), .RGB(205, 152, 36), .RGB(99, 79, 37), .RGB(129, 180, 179), .RGB(124, 103, 37)],
            [.RGB(33, 75, 99), .RGB(79, 129, 102), .RGB(151, 179, 100), .RGB(175, 49, 35), .RGB(36, 73, 147)],
            [.RGB(146, 123, 21), .RGB(177, 180, 34), .RGB(206, 206, 40), .RGB(175, 51, 21), .RGB(35, 36, 21)]
        ]

        let topLeft = Pie(
            name: "Starry Night",
            labels: allLabels,
            values: allValues[0],
            marker: Pie.Marker(
                colors: ultimateColors[0]
            ),
            textInfo: Pie<[String], [Int]>.TextInfo.none,
            hoverInfo: [.name, .label, .percent],
            domain: Shared.Domain(
                row: 0,
                column: 0
            )
        )
        let bottomLeft = Pie(
            name: "Sunflowers",
            labels: allLabels,
            values: allValues[1],
            marker: Pie.Marker(
                colors: ultimateColors[1]
            ),
            textInfo: Pie<[String], [Int]>.TextInfo.none,
            hoverInfo: [.name, .label, .percent],
            domain: Shared.Domain(
                row: 1,
                column: 0
            )
        )
        let topRight = Pie(
            name: "Irises",
            labels: allLabels,
            values: allValues[2],
            marker: Pie.Marker(
                colors: ultimateColors[2]
            ),
            textInfo: Pie<[String], [Int]>.TextInfo.none,
            hoverInfo: [.name, .label, .percent],
            domain: Shared.Domain(
                row: 0,
                column: 1
            )
        )
        let bottomRight = Pie(
            name: "The Night Cafe",
            labels: allLabels,
            values: allValues[3],
            marker: Pie.Marker(
                colors: ultimateColors[3]
            ),
            textInfo: Pie<[String], [Int]>.TextInfo.none,
            hoverInfo: [.name, .label, .percent],
            domain: Shared.Domain(
                x: [0.52, 1],
                y: [0, 0.48]
            )
        )

        let layout = Layout(
            width: 400,
            height: 400,
            grid: Layout.Grid(
                rows: 2,
                columns: 2
            )
        )

        let figure = Figure(data: [topLeft, bottomLeft, topRight, bottomRight], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/pie-charts/#donut-chart
    func testDonutChart() {
        let leftDonut = Pie(
            name: "GHG Emissions",
            labels: ["US", "China", "European Union", "Russian Federation", "Brazil", "India", "Rest of World"],
            values: [16, 15, 12, 6, 5, 4, 42],
            hoverInfo: [.name, .label, .percent],
            domain: Shared.Domain(
                column: 0
            ),
            hole: 0.4
        )
        let rightDonut = Pie(
            name: "CO2 Emissions",
            labels: ["US", "China", "European Union", "Russian Federation", "Brazil", "India", "Rest of World"],
            values: [27, 11, 25, 8, 1, 3, 25],
            hoverInfo: [.name, .label, .percent],
            domain: Shared.Domain(
                column: 1
            ),
            hole: 0.4
        )

        let layout = Layout(
            title: "Global Emissions 1990-2011",
            width: 600,
            height: 400,
            showLegend: false,
            grid: Layout.Grid(
                rows: 1,
                columns: 2
            ),
            annotations: [
                Layout.Annotation(
                    text: "GHG",
                    font: Shared.Font(size: 20),
                    showArrow: false,
                    x: 0.25, xAnchor: .center,
                    y: 0.5, yAnchor: .middle
                ),
                Layout.Annotation(
                    text: "CO2",
                    font: Shared.Font(size: 20),
                    showArrow: false,
                    x: 0.75, xAnchor: .center,
                    y: 0.5, yAnchor: .middle
                ),
            ]
        )

        let figure = Figure(data: [leftDonut, rightDonut], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/pie-charts/#automatically-adjust-margins
    func testAutomaticallyAdjustMargins() {
        let pie = Pie(
            labels: ["Wages", "Operating expenses", "Cost of sales", "Insurance"],
            values: [2, 3, 4, 4],
            textInfo: [.label, .percent],
            textPosition: .outside,
            autoMargin: true
        )
        let layout = Layout(
            width: 600,
            height: 400,
            margin: Layout.Margin(
                l: 0, r: 0, t: 0, b: 0
            ),
            showLegend: false
        )
        let figure = Figure(data: [pie], layout: layout)
        output(figure)
    }
}
