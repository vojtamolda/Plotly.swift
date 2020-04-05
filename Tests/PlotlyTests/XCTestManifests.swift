import Foundation
import XCTest
import Plotly


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

        // https://plot.ly/javascript/scientific-charts/
        testCase(ContourPlots.allTests),
        testCase(Heatmaps.allTests),

        // https://plot.ly/javascript/subplots/
        testCase(Subplots.allTests),
        testCase(InsetPlots.allTests),
        testCase(Subplots3D.allTests),
        testCase(MixedSubplots.allTests),
        testCase(TableSubplots.allTests),
        testCase(MultipleAxesSubplots.allTests),

        testCase(FigureTests.allTests),
        testCase(SwatchTests.allTests),
        testCase(PlotableTests.allTests),

        testCase(InforArrayTests.allTests)
    ]
}
#endif


extension XCTestCase {
    internal func output(_ figure: Figure) {
        var name = self.name.replacingOccurrences(of: "-", with: "")
        name = name.replacingOccurrences(of: "[", with: "")
        name = name.replacingOccurrences(of: "]", with: "")
        name = name.replacingOccurrences(of: " ", with: ".")

        let htmlFile = URL(fileURLWithPath: "\(name).html")
        figure.write(toFile: htmlFile.relativePath, as: .HTML, javaScript: .online)

        let jsonFile = URL(fileURLWithPath: "\(name).json")
        figure.write(toFile: jsonFile.relativePath, as: .JSON)

        #if !os(Linux)
        if ProcessInfo.processInfo.environment["GITHUB_ACTIONS"] != "true" {
            add(XCTAttachment(contentsOfFile: htmlFile))
            add(XCTAttachment(contentsOfFile: jsonFile))
        }
        #endif
    }
}
