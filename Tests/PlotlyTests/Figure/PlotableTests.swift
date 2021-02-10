import XCTest
import Plotly

#if canImport(TensorFlow)
import TensorFlow
#endif


final class PlotableTests: XCTestCase {
    static var allTests = [
        ("testCustomTypePlot", testCustomTypePlot),
        ("testRangePlot", testRangePlot),
        ("testStridePlot", testStridePlot),
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

    func testRangePlot() {
        let closedRangeScatter = Scatter(
            name: "Closed range to 10",
            x: 0...10,
            y: 0...10
        )
        let openRangeScatter = Scatter(
            name: "Open range to 10",
            x: 0..<10,
            y: 0..<10
        )

        let figure = Figure(data: [closedRangeScatter, openRangeScatter])
        output(figure)
    }
    
    func testStridePlot() {
        let strideThroughScatter = Scatter(
            name: "Stride through 1",
            x: stride(from: 0, through: 1, by: 0.1),
            y: stride(from: 0, through: 1, by: 0.1)
        )
        let strideToScatter = Scatter(
            name: "Stride to 1",
            x: stride(from: 0, to: 1, by: 0.1),
            y: stride(from: 0, to: 1, by: 0.1)
        )
        
        let figure = Figure(data: [strideThroughScatter, strideToScatter])
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
