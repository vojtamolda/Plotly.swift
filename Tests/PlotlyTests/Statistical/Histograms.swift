import XCTest
import Plotly


/// https://plot.ly/javascript/histograms/
final class Histograms: XCTestCase {
    static var allTests = [
        ("testBasicHistogram", testBasicHistogram),
        ("testHorizontalHistogram", testHorizontalHistogram),
        ("testOverlaidHistograms", testOverlaidHistograms),
        ("testStackedHistograms", testStackedHistograms),
        ("testColoredAndStyledHistograms", testColoredAndStyledHistograms),
        ("testCumulativeHistogram", testCumulativeHistogram),
        ("testNormalizedHistogram", testNormalizedHistogram),
        ("testSpecifyBinningFunction", testSpecifyBinningFunction)
    ]

    /// https://plot.ly/javascript/histograms/#basic-histogram
    func testBasicHistogram() {
        let trace = Histogram<[Double], [Int]>(
            x: (0...500).map { _ in Double.random(in: 0...1) }
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#horizontal-histogram
    func testHorizontalHistogram() {
        let trace = Histogram<[Int], [Double]>(
            y: (0...500).map { _ in Double.random(in: 0...1) },
            marker: .init(
                coloring: .constant(.pink)
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#overlaid-histgram
    func testOverlaidHistograms() {
        let trace1 = Histogram<[Double], [Int]>(
            opacity: 0.5,
            x: (0...500).map { _ in Double.random(in: 1.0 ... 2.0) },
            marker: .init(
                coloring: .constant(.green)
            )
        )
        let trace2 = Histogram<[Double], [Int]>(
            opacity: 0.6,
            x: (0...500).map { _ in Double.random(in: 1.1 ... 2.1) },
            marker: .init(
                coloring: .constant(.red)
            )
        )
        let layout = Layout(
            barMode: .overlay
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#stacked-histograms
    func testStackedHistograms() {
        let trace1 = Histogram<[Double], [Int]>(
            x: (0...500).map { _ in Double.random(in: 0...1) }
        )
        let trace2 = Histogram<[Double], [Int]>(
            x: (0...500).map { _ in Double.random(in: 0...1) }
        )
        let layout = Layout(
            barMode: .stack
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#colored-and-styled-histograms
    func testColoredAndStyledHistograms() {
        let random = (0...500).map { _ in Double.random(in: 0...1) }
        let x1 = random.map { 5.0 * $0 }
        let y1 = random.map { 1.0 * $0 }
        let x2 = random.map { 10.0 * $0 }
        let y2 = random.map { 2.0 * $0 }

        let trace1 = Histogram(
            opacity: 0.5,
            name: "control",
            x: x1,
            y: y1,
            xBins: .init(
                start: 0.5,
                end: 2.8,
                size: 0.06
            ),
            xAutoBin: false,
            marker: Shared.Marker(
                line: .init(
                    width: 1,
                    coloring: .constant(.RGB(255, 100, 102, 1))
                ),
                coloring: .constant(.RGB(255, 100, 102, 0.7))
            )
        )

        let trace2 = Histogram(
            opacity: 0.75,
            name: "experimental",
            x: x2,
            y: y2,
            xBins: .init(
                start: -3.2,
                end: 4,
                size: 0.06
            ),
            xAutoBin: false,
            marker: Shared.Marker(
                line: .init(
                    width: 1,
                    coloring: .constant(.RGB(100, 200, 102, 1))
                ),
                coloring: .constant(.RGB(100, 200, 102, 0.7))
            )
        )

        let layout = Layout(
            barMode: .overlay,
            barGap: 0.05,
            barGroupGap: 0.2,
            title: "Sampled Results",
            xAxis: .init(
                title: "Value"
            ),
            yAxis: .init(
                title: "Count"
            )
        )

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#cumulative-histogram
    func testCumulativeHistogram() {
        let trace = Histogram<[Double], [Int]>(
            x: (0...500).map { _ in Double.random(in: 0...1) },
            cumulative: .init(
                enabled: true
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#normalized-histogram
    func testNormalizedHistogram() {
        let trace = Histogram<[Double], [Int]>(
            x: (0...500).map { _ in Double.random(in: 0...1) },
            normalization: .probability,
            marker: .init(
                coloring: .constant(.RGB(255, 255, 100))
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/histograms/#specify-binning-function
    func testSpecifyBinningFunction() {
        let x = ["Apples", "Apples", "Apples", "Oranges", "Bananas"]
        let y = ["5", "10", "3", "10", "5"]

        let count = Histogram(
            name: "count",
            x: x,
            y: y,
            binningFunction: .count
        )
        let sum = Histogram(
            name: "sum",
            x: x,
            y: y,
            binningFunction: .sum
        )
        let figure = Figure(data: [count, sum])
        output(figure)
    }
}
