import XCTest


#if os(Linux)
public func allTests() -> [XCTestCaseEntry] {
    [
        // https://plot.ly/javascript/basic-charts/
        testCase(LineCharts.allTests),
        testCase(ScatterPlots.allTests),
        testCase(BarCharts.allTests),
        testCase(PieCharts.allTests),

        // https://plot.ly/javascript/statistical-charts/
        testCase(ErrorBars.allTests),
        testCase(BoxPlots.allTests),
        testCase(Histograms.allTests),

        testCase(FigureTests.allTests)
    ]
}
#endif
