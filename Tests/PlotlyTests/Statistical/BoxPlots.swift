import XCTest
import Plotly


/// https://plot.ly/javascript/box-plots/
final class BoxPlots: XCTestCase {
    static var allTests = [
        ("testBasicBoxPlot", testBasicBoxPlot),
        ("testBoxPlotThatDisplaysTheUnderlyingData", testBoxPlotThatDisplaysTheUnderlyingData),
        ("testHorizontalBoxPlot", testHorizontalBoxPlot),
        ("testGroupedBoxPlot", testGroupedBoxPlot),
        ("testBoxPlotStylingOutliers", testBoxPlotStylingOutliers),
        ("testBoxPlotStylingMeanAndStandardDeviation", testBoxPlotStylingMeanAndStandardDeviation),
        ("testGroupedHorizontalPlot", testGroupedHorizontalPlot),
        ("testColoredBoxPlot", testColoredBoxPlot),
        ("testFullyStyledBoxPlot", testFullyStyledBoxPlot),
        ("testRainbowBoxPlot", testRainbowBoxPlot)
    ]

    /// https://plot.ly/javascript/box-plots/#basic-box-plot
    func testBasicBoxPlot() {
        let trace1 = Box<[Double], [Int]>(
            y: (1...50).map { _ in Double.random(in: 0...1) }
        )
        let trace2 = Box<[Double], [Int]>(
            y: (1...50).map { _ in Double.random(in: 1...2) }
        )

        let figure = Figure(data: [trace1, trace2])
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#box-plot-that-displays-the-underlying-data
    func testBoxPlotThatDisplaysTheUnderlyingData() {
        let trace = Box<[Int], [Int]>(
            y: [0, 1, 1, 2, 3, 5, 8, 13, 21],
            boxPoints: .all,
            jitter: 0.3,
            pointPosition: -1.8
        )

        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#horizontal-box-plot
    func testHorizontalBoxPlot() {
        let trace1 = Box<[Int], [Int]>(
            name: "Set 1",
            x: [1, 2, 3, 4, 4, 4, 8, 9, 10]
        )
        let trace2 = Box<[Double], [Int]>(
            name: "Set 2",
            x: [2, 3, 3, 3, 3, 5, 6, 6, 7]
        )

        let layout = Layout(
            title: "Horizontal Box Plot"
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#grouped-box-plot
    func testGroupedBoxPlot() {
        let x = ["day 1", "day 1", "day 1", "day 1", "day 1", "day 1",
                 "day 2", "day 2", "day 2", "day 2", "day 2", "day 2"]

        let trace1 = Box(
            name: "kale",
            y: [0.2, 0.2, 0.6, 1.0, 0.5, 0.4,
                0.2, 0.7, 0.9, 0.1, 0.5, 0.3],
            x: x,
            marker: .init(
                color: 0xD9970
            )
        )
        let trace2 = Box(
            name: "radishes",
            y: [0.6, 0.7, 0.3, 0.6, 0.0, 0.5,
                0.7, 0.9, 0.5, 0.8, 0.7, 0.2],
            x: x,
            marker: .init(
                color: 0xFF4136
            )
        )
        let trace3 = Box(
            name: "carrots",
            y: [0.1, 0.3, 0.1, 0.9, 0.6, 0.6,
                0.9, 1.0, 0.3, 0.6, 0.8, 0.5],
            x: x,
            marker: .init(
                color: 0xFF851B
            )
        )

        let layout = Layout(
            boxMode: .group,
            yAxis: [
                Layout.YAxis(
                    title: "normalized moisture",
                    zeroLine: false
                )
            ]
        )
        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#box-plot-styling-outliers
    func testBoxPlotStylingOutliers() {
        let y = [0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5, 7.75, 8.15,
                 8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5, 12, 16, 20.90, 22.3, 23.25]

        let trace1 = Box<[Double], [Int]>(
            name: "All Points",
            y: y,
            boxPoints: .all,
            jitter: 0.3,
            pointPosition: -1.8,
            marker: .init(
                color: .RGB(7, 40, 89)
            )
        )
        let trace2 = Box<[Double], [Int]>(
            name: "Only Whiskers",
            y: y,
            boxPoints: .off,
            marker: .init(
                color: .RGB(9, 56, 125)
            )
        )
        let trace3 = Box<[Double], [Int]>(
            name: "Suspected Outlier",
            y: y,
            boxPoints: .suspectedOutliers,
            marker: .init(
                outlierColor: .RGB(219, 64, 82, 0.6),
                color: .RGB(8, 81, 156),
                line: .init(
                    outlierColor: .RGB(219, 64, 82, 0.6),
                    outlierWidth: 2
                )
            )
        )
        let trace4 = Box<[Double], [Int]>(
            name: "Whiskers and Outliers",
            y: y,
            boxPoints: .outliers,
            marker: .init(
                color: .RGB(107, 174, 214)
            )
        )

        let layout = Layout(
            title: "Box Plot Styling Outliers"
        )
        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#box-plot-styling-mean-and-standard-deviation
    func testBoxPlotStylingMeanAndStandardDeviation() {
        let y = [2.37, 2.16, 4.82, 1.73, 1.04, 0.23, 1.32, 2.91, 0.11, 4.51,
                 0.51, 3.75, 1.35, 2.98, 4.50, 0.18, 4.66, 1.30, 2.06, 1.19]

        let trace1 = Box<[Double], [Int]>(
            name: "Only Mean",
            y: y,
            boxMean: .off,
            marker: .init(
                color: .RGB(8, 81, 156)
            )
        )

        let trace2 = Box<[Double], [Int]>(
            name: "Mean and Standard Deviation",
            y: y,
            boxMean: .sd,
            marker: .init(
                color: .RGB(10, 140, 208)
            )
        )

        let layout = Layout(
            title: "Box Plot Styling Mean and Standard Deviation"
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#grouped-horizontal-box-plot
    func testGroupedHorizontalPlot() {
        let y = ["day 1", "day 1", "day 1", "day 1", "day 1", "day 1",
                 "day 2", "day 2", "day 2", "day 2", "day 2", "day 2"]

        let trace1 = Box(
            name: "kale",
            y: y,
            x: [0.2, 0.2, 0.6, 1.0, 0.5, 0.4,
                0.2, 0.7, 0.9, 0.1, 0.5, 0.3],
            boxMean: .off,
            orientation: .h,
            marker: .init(
                color: 0x3D9970
            )
        )
        let trace2 = Box(
            name: "radishes",
            y: y,
            x: [0.6, 0.7, 0.3, 0.6, 0.0, 0.5,
                0.7, 0.9, 0.5, 0.8, 0.7, 0.2],
            boxMean: .off,
            orientation: .h,
            marker: .init(
                color: 0xFF4136
            )
        )
        let trace3 = Box(
            name: "carrots",
            y: y,
            x: [0.1, 0.3, 0.1, 0.9, 0.6, 0.6,
                0.9, 1.0, 0.3, 0.6, 0.8, 0.5],
            boxMean: .off,
            orientation: .h,
            marker: .init(
                color: 0xFF851B
            )
        )

        let layout = Layout(
            boxMode: .group,
            title: "Grouped Horizontal Box Plot",
            xAxis: [
                .init(
                    title: "normalized moisture",
                    zeroLine: false
                )
            ]
        )
        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#colored-box-plot
    func testColoredBoxPlot() {
        let trace1 = Box<[Double], [Int]>(
            name: "Sample A",
            y: [1, 2, 3, 4, 4, 4, 8, 9, 10],
            marker: .init(
                color: .RGB(214, 12, 140)
            )
        )

        let trace2 = Box<[Double], [Int]>(
            name: "Sample B",
            y: [2, 3, 3, 3, 3, 5, 6, 6, 7],
            marker: .init(
                color: .RGB(0, 128, 128)
            )
        )

        let layout = Layout(
            title: "Colored Box Plot"
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#fully-styled-box-plot
    func testFullyStyledBoxPlot() {
        let x = [
            "Carmelo<br>Anthony", "Dwyane<br>Wade",
            "Deron<br>Williams", "Brook<br>Lopez",
            "Damian<br>Lillard", "David<br>West",
            "Blake<br>Griffin", "David<br>Lee",
            "Demar<br>Derozan"
        ]
        let y = [
            (1...30).map { _ in Double.random(in: 0...10) }, (1...30).map { _ in Double.random(in: 0...20) },
            (1...30).map { _ in Double.random(in: 0...25) }, (1...30).map { _ in Double.random(in: 0...40) },
            (1...30).map { _ in Double.random(in: 0...45) }, (1...30).map { _ in Double.random(in: 0...30) },
            (1...30).map { _ in Double.random(in: 0...20) }, (1...30).map { _ in Double.random(in: 0...15) },
            (1...30).map { _ in Double.random(in: 0...43) },
        ]
        let colors: [Color] = [
            .RGB(93, 164, 214, 0.5), .RGB(255, 144, 14, 0.5),
            .RGB(44, 160, 101, 0.5), .RGB(255, 65, 54, 0.5),
            .RGB(207, 114, 255, 0.5), .RGB(127, 96, 0, 0.5),
            .RGB(255, 140, 184, 0.5), .RGB(79, 90, 117, 0.5),
            .RGB(222, 223, 0, 0.5)
        ]

        var traces = [Trace]()
        for i in 0..<x.count {
            let trace = Box<[Double], [Int]>(
                name: x[i],
                y: y[i],
                whiskerWidth: 0.2,
                boxPoints: .all,
                jitter: 0.5,
                marker: .init(
                    size: 2
                ),
                line: .init(
                    width: 1
                ),
                fillColor: colors[i]
            )
            traces.append(trace)
        }

        let layout = Layout(
            title: "Points Scored by the Top 9 Scoring NBA Players in 2012",
            margin: .init(
                l: 40, r: 30,
                t: 100, b: 80
            ),
            paperBackgroundColor: .RGB(243, 243, 243),
            plotBackgroundColor: .RGB(243, 243, 243),
            showLegend: false,
            yAxis: [
                .init(
                    autoRange: .off,
                    dTick: .numeric(5),
                    showGrid: true,
                    gridColor: .RGB(255, 255, 255),
                    gridWidth: 1,
                    zeroLine: true,
                    zeroLineColor: .RGB(255, 255, 255),
                    zeroLineWidth: 2
                )
            ]
        )

        let figure = Figure(data: traces, layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/box-plots/#rainbow-box-plot
    func testRainbowBoxPlot() {
        let boxNumber = 30

        let colors: [Color] = (0...boxNumber).map { boxIdx in
            let frac = Double(boxIdx) / Double(boxNumber)
            return Color.HSL(Float(360.0 * frac), 0.5, 0.5)
        }
        let y: [[Double]] = (0...boxNumber).map { boxIdx in
            (0...10).map { _ in
                let frac = Double(boxIdx) / Double(boxNumber)
                let signal = 3.5 * sin(Double.pi * frac) + frac
                let noise = (1.5 + 0.5 * cos(Double.pi * frac)) * Double.random(in: 0...1)
                return signal + noise
            }
        }

        var traces = [Trace]()
        for i in 0..<boxNumber {
            let trace = Box<[Double], [Int]>(
                y: y[i],
                marker: .init(
                    color: colors[i]
                )
            )
            traces.append(trace)
        }

        let layout = Layout(
            paperBackgroundColor: .RGB(233, 233, 233),
            plotBackgroundColor: .RGB(233, 233, 233),
            showLegend: false,
            xAxis: [
                .init(
                    autoRange: .off,
                    showTickLabels: false,
                    tickAngle: 90,
                    showGrid: false,
                    zeroLine: false
                )
            ],
            yAxis: [
                .init(
                    gridColor: .white,
                    zeroLine: false
                )
            ]
        )

        let figure = Figure(data: traces, layout: layout)
        output(figure)
    }
}
