import XCTest
import Plotly

#if canImport(TensorFlow)
import TensorFlow
#endif


final class PlotableTests: XCTestCase {
    static var allTests = [
        ("testCustomTypePlot", testCustomTypePlot),
        ("testTensorFlowPlot", testTensorFlowPlot),
    ]

    func testCustomTypePlot() {
        let barChart = Bar(
            x: ["A", "B", "C"],
            y: ABC(a: 2, b: 3, c: 4)
        )

        let figure = Figure(data: [barChart])
        output(figure)
    }

    func testTensorFlowPlot() {
        #if canImport(TensorFlow)
        let z = Tensor<Float>(randomUniform: [3, 5])
        let x = Tensor<Float>([1, 2, 3, 4, 5])
        let y = Tensor<Float>([1, 2, 3])
        let heatmap = Heatmap(z:z, x: x, y: y)
        let figure = Figure(data: [heatmap])
        output(figure)
        #else
        print("TensorFlow can't be imported")
        #endif
    }
}


fileprivate struct ABC: Encodable {
    var a, b, c: Int

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode([a, b, c])
    }
}
extension ABC: Plotable {
    public func encode(toPlotly encoder: Encoder) throws {
        try encode(to: encoder)
    }
}
