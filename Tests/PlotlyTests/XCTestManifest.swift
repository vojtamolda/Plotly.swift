import XCTest


#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    [
        testCase(BarCharts.allTests),
        testCase(LineCharts.allTests),
        testCase(ScatterPlots.allTests),

        testCase(FigureTests.allTests)
    ]
}
#endif
