import XCTest
import PlotlyTests


var testsToRun = [XCTestCaseEntry]()
testsToRun += PlotlyTests.allTests()
XCTMain(testsToRun)
