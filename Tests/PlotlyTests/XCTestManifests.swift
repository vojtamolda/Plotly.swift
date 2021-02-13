import Foundation
import XCTest
import Plotly


#if os(Linux)
public func allTests() -> [XCTestCaseEntry] {
    [
        // https://plotly.com/javascript/animations/
        testCase(ButtonTests.allTests),
        testCase(SliderTests.allTests),

        // https://plot.ly/javascript/basic-charts/
        testCase(LineChartTests.allTests),
        testCase(ScatterPlotTests.allTests),
        testCase(BarChartTests.allTests),
        testCase(PieChartTests.allTests),

        // https://plot.ly/javascript/statistical-charts/
        testCase(ErrorBarTests.allTests),
        testCase(BoxPlotTests.allTests),
        testCase(HistogramTests.allTests),

        // https://plot.ly/javascript/scientific-charts/
        testCase(ContourPlotTests.allTests),
        testCase(HeatmapTests.allTests),

        // https://plot.ly/javascript/subplots/
        testCase(SubplotTests.allTests),
        testCase(InsetPlotTests.allTests),
        testCase(Subplot3DTests.allTests),
        testCase(MixedSubplotTests.allTests),
        testCase(TableSubplotTests.allTests),
        testCase(MultipleAxesSubplotTests.allTests),

        testCase(FigureTests.allTests),
        testCase(TraceTests.allTests),
        testCase(SwatchTests.allTests),
        testCase(PlotableTests.allTests),
        
        testCase(CSVDecoderTests.allTests),

        testCase(InfoArrayTests.allTests)
    ]
}
#endif


extension XCTestCase {
    func output(_ figure: Figure) {
        var name = self.name.replacingOccurrences(of: "-", with: "")
        name = name.replacingOccurrences(of: "[", with: "")
        name = name.replacingOccurrences(of: "]", with: "")
        name = name.replacingOccurrences(of: " ", with: ".")

        #if os(Linux)
            let htmlFile = URL(fileURLWithPath: "\(name).html")
            try! figure.write(toFile: htmlFile.relativePath, as: .HTML, javaScript: .online)

            let jsonFile = URL(fileURLWithPath: "\(name).json")
            try! figure.write(toFile: jsonFile.relativePath, as: .JSON)
        #else
            XCTContext.runActivity(named: name.suffix(after: ".")) { activity in
                let htmlFile = URL(fileURLWithPath: "\(name).html")
                try! figure.write(toFile: htmlFile.relativePath, as: .HTML, javaScript: .online)

                let jsonFile = URL(fileURLWithPath: "\(name).json")
                try! figure.write(toFile: jsonFile.relativePath, as: .JSON)

                if ProcessInfo.processInfo.environment["GITHUB_ACTIONS"] != "true" {
                    activity.add(XCTAttachment(contentsOfFile: htmlFile))
                    activity.add(XCTAttachment(contentsOfFile: jsonFile))
                }
            }
        #endif
    }
}


// MARK: - Utilities

fileprivate extension String {
    func suffix(after element: Character = ".") -> String {
        if let elementIndex = self.lastIndex(of: element) {
            return String(self[index(after: elementIndex)...])
        }
        return self
    }
}
