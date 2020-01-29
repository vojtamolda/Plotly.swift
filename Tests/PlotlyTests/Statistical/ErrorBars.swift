import XCTest
import Plotly


/// https://plot.ly/javascript/error-bars/
final class ErrorBars: XCTestCase {
    static var allTests = [
        ("testBasicSymmetricErrorBars", testBasicSymmetricErrorBars),
        ("testBarChartWithErrorBars", testBarChartWithErrorBars),
        ("testHorizontalErrorBars", testHorizontalErrorBars),
        ("testAsymmetricErrorBars", testAsymmetricErrorBars),
        ("testColoredAndStyledErrorBars", testColoredAndStyledErrorBars),
        ("testErrorBarsAsAPercentageOfTheYValue", testErrorBarsAsAPercentageOfTheYValue),
        ("testErrorBarsAsAPercentageOfTheYValue", testErrorBarsAsAPercentageOfTheYValue),
        ("testAsymmetricErrorBarsWithAConstantOffset", testAsymmetricErrorBarsWithAConstantOffset)
    ]

    /// https://plot.ly/javascript/error-bars/#basic-symmetric-error-bars
    func testBasicSymmetricErrorBars() {
        let trace = Scatter(
            x: [0, 1, 2],
            y: [6, 10, 2],
            yError: Shared.Error(
                visible: true,
                type: .data,
                array: [1, 2, 3]
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/error-bars/#bar-chart-with-error-bars
    func testBarChartWithErrorBars() {
        let trace1 = Bar(
            name: "Control",
            x: ["Trial 1", "Trial 2", "Trial 3"],
            y: [3, 6, 4],
            yError: Shared.Error(
                visible: true,
                type: .data,
                array: [1, 0.5, 1.5]
            )
        )
        let trace2 = Bar(
            name: "Experimental",
            x: ["Trial 1", "Trial 2", "Trial 3"],
            y: [4, 7, 3],
            yError: Shared.Error(
                visible: true,
                type: .data,
                array: [0.5, 1, 2]
            )
        )

        let figure = Figure(data: [trace1, trace2])
        output(figure)
    }

    /// https://plot.ly/javascript/error-bars/#horizontal-error-bars
    func testHorizontalErrorBars() {
        let trace = Scatter(
            x: [1, 2, 3, 4],
            y: [2, 1, 3, 4],
            xError: Shared.Error(
                type: .percent,
                value: 10
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/error-bars/#asymmetric-error-bars
    func testAsymmetricErrorBars() {
        let trace = Scatter(
            x: [1, 2, 3, 4],
            y: [2, 1, 3, 4],
            yError: Shared.Error(
                type: .data,
                symmetric: false,
                array: [0.1, 0.2, 0.1, 0.1],
                arrayMinus: [0.2, 0.4, 1, 0.2]
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/error-bars/#colored-and-styled-error-bars
    func testColoredAndStyledErrorBars() {
        let x = Array<Double>(stride(from: -4, to: +4, by: 8/100))
        let sinc = x.map { x in x * Double.pi }.map { x in sin(x) / x }

        let precise = Scatter(
            name: "sinc(x)",
            x: x,
            y: sinc
        )
        let measured = Scatter(
            name: "measured",
            x: [-3.8, -3.03, -1.91, -1.46, -0.89, -0.24, -0.0, 0.41, 0.89, 1.01, 1.91, 2.28, 2.79, 3.56],
            y: [-0.02, 0.04, -0.01, -0.27, 0.36, 0.75, 1.03, 0.65, 0.28, 0.02, -0.11, 0.16, 0.04, -0.15],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 8,
                color: .value(.named("#85144B"))
            ),
            xError: Shared.Error(
                type: .constant,
                value: 0.2,
                color: .named("#85144B"),
                thickness: 1.5,
                width: 3
            ),
            yError: Shared.Error(
                type: .constant,
                value: 0.1,
                color: .named("#85144B"),
                thickness: 1.5,
                width: 3
            )
        )

        let figure = Figure(data: [precise, measured])
        output(figure)
    }

    /// https://plot.ly/javascript/error-bars/#error-bars-as-a-percentage-of-the-y-value
    func testErrorBarsAsAPercentageOfTheYValue() {
        let trace = Scatter(
            x: [0, 1, 2],
            y: [6, 10, 2],
            yError: Shared.Error(
                visible: true,
                type: .percent,
                value: 50
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }

    /// https://plot.ly/javascript/error-bars/#asymmetric-error-bars-with-a-constant-offset
    func testAsymmetricErrorBarsWithAConstantOffset() {
        let trace = Scatter(
            x: [1, 2, 3, 4],
            y: [2, 1, 3, 4],
            yError: Shared.Error(
                type: .percent,
                symmetric: false,
                value: 10,
                valueMinus: 25
            )
        )
        let figure = Figure(data: [trace])
        output(figure)
    }
}
