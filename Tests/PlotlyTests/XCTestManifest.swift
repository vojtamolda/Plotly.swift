import XCTest


#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    [
        testCase(ScatterPlots.allTests),
        testCase(LineCharts.allTests),
        testCase(FigureTests.allTests)
    ]
}
#endif
