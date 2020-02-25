import XCTest
import Plotly


final class SwatchTests: XCTestCase {
    static var allTests = [
        ("testOcean", testOcean),
        ("testBrewer", testBrewer),
        ("testCarto", testCarto),
        ("testPlotly", testPlotly),
        ("testSequential", testSequential),
        ("testDiverging", testDiverging),
        ("testCyclical", testCyclical),
        ("testColorList", testColorList)
    ]

    func testFrequent() {
        let figure = ColorScale.swatch()
        output(figure)
    }

    func testOcean() {
        let figure = ColorScale.Ocean.swatch()
        output(figure)
    }

    func testBrewer() {
        let figure = ColorScale.Brewer.swatch()
        output(figure)
    }

    func testCarto() {
        let figure = ColorScale.Carto.swatch()
        output(figure)
    }

    func testPlotly() {
        let figure = ColorScale.Plotly.swatch()
        output(figure)
    }

    func testSequential() {
        let figure = ColorScale.Sequential.swatch()
        output(figure)
    }

    func testDiverging() {
        let figure = ColorScale.Diverging.swatch()
        output(figure)
    }

    func testCyclical() {
        let figure = ColorScale.Cyclical.swatch()
        output(figure)
    }

    func testColorList() {
        let figure = ColorList.swatch()
        output(figure)
    }
}
