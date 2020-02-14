import XCTest
import Plotly


/// https://plot.ly/javascript/heatmaps/
final class Heatmaps: XCTestCase {
    static var allTests = [
        ("testBasicHeatmap", testBasicHeatmap),
        ("testHeatmapWithCategoricalAxisLabels", testHeatmapWithCategoricalAxisLabels),
        ("testAnnotatedHeatmap", testAnnotatedHeatmap),
        ("testHeatmapWithUnequalBlockSizes", testHeatmapWithUnequalBlockSizes)
    ]

    /// https://plot.ly/javascript/heatmaps/#basic-heatmap
    func testBasicHeatmap() {
        let trace = Heatmap<[[Double]], [Int]>(
            z: [[1, 20, 30], [20, 1, 60], [30, 60, 1]]
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/heatmaps/#heatmap-with-categorical-axis-labels
    func testHeatmapWithCategoricalAxisLabels() {
        let trace = Heatmap(
            z: [[1, nil, 30, 50, 1], [20, 1, 60, 80, 30], [30, 60, 1, -10, 20]],
            x: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
            y: ["Morning", "Afternoon", "Evening"],
            hoverOnGaps: false
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/heatmaps/#annotated-heatmap
    func testAnnotatedHeatmap() {
        let x = ["A", "B", "C", "D", "E"]
        let y = ["W", "X", "Y", "Z"]
        let z = [
            [0.00, 0.00, 0.75, 0.75, 0.00],
            [0.00, 0.00, 0.75, 0.75, 0.00],
            [0.75, 0.75, 0.75, 0.75, 0.75],
            [0.00, 0.00, 0.00, 0.75, 0.00]
        ]
        let colorMap = [
            1.0: Color(0x001f3f),
            0.0: Color(0x3D9970)
        ]

        let trace = Heatmap(
            z: z,
            x: x,
            y: y,
            colorScale: .custom(colorMap: colorMap),
            showScale: false
        )

        let layout = Layout(
            title: "Annotated Heatmap",
            autoSize: false,
            width: 700,
            height: 700,
            xAxis: .init(
                ticks: Shared.Ticks.none,
                side: .top
            ),
            yAxis: .init(
                ticks: Shared.Ticks.none,
                tickSuffix: .none
            ),
            annotations: x.enumerated().flatMap { x in
                y.enumerated().map { y in
                    Layout.Annotation(
                        text: String(z[y.offset][x.offset]),
                        font: Shared.Font(
                            family: "Arial",
                            size: 12,
                            color: (z[y.offset][x.offset] == 0.0) ? .black : .white
                        ),
                        showArrow: false,
                        x: .string(x.element),
                        y: .string(y.element)
                        // FIXME: yReference and xReference don't work
                    )
                }
            }
        )

        let figure = Figure(data: [trace], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/heatmaps/#heatmap-with-unequal-block-sizes
    func testHeatmapWithUnequalBlockSizes() {
        let (a, b) = (1.120529, 0.306349)
        let theta = Array(stride(from: -Double.pi / 13.0, to: 4.0 * Double.pi, by: 0.01))
        let x = theta.map { a * exp(-b * $0) * cos($0) }
        let y = theta.map { a * exp(-b * $0) * sin($0) }

        let spiral = Scatter(
            x: x.map { x.first! - $0 },
            y: y.map { $0 - y.first! },
            line: .init(
                color: .white,
                width: 3
            )
        )

        let phi = (1.0 + sqrt(5.0)) / 2.0;
        let heatmap = Heatmap(
            z: [[13, 3, 3, 5],
                [13, 2, 1, 5],
                [13, 10, 11, 12],
                [13, 8, 8, 8]],
            x: [0.0, 1.0, 1.0 + pow(phi, -4), 1 + pow(phi, -3), phi],
            y: [0.0, pow(phi, -3), pow(phi, -3) + pow(phi, -4), pow(phi, -2), 1.0],
            colorScale: .viridis
        )

        let layout = Layout(
            title: "Heatmap with Unequal Block Sizes",
            autoSize: false,
            width: 700,
            height: 600,
            margin: .init(
                l: 200, r: 200,
                t: 200, b: 200
            ),
            showLegend: false,
            xAxis: Layout.XAxis(
                autoRange: .false,
                range: [0, phi],
                ticks: Shared.Ticks.none,
                showTickLabels: false,
                showGrid: false,
                zeroLine: false
            ),
            yAxis: Layout.YAxis(
                autoRange: .false,
                range: [0, 1],
                ticks: Shared.Ticks.none,
                showTickLabels: false,
                showGrid: false,
                zeroLine: false
            )
        )
        // FIXME: It's not possible to set layout.xAxis = layout.yAxis even though they are identical structs.

        let figure = Figure(data: [spiral, heatmap], layout: layout)
        output(figure)
    }
}
