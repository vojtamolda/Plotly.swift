import XCTest
@testable import Plotly


final class PlotlyTests: XCTestCase {

    func testShow() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(mode: .markers, x: x, y: y)]
        let figure = Figure(data: data)
        figure.show()
    }
    
    func testExportHTML() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(mode: .markers, x: x, y: y)]
        let figure = Figure(data: data)
        
        let testHtmlFile = URL(fileURLWithPath: "test.html")
        try! figure.write(to: testHtmlFile, as: .HTML)
    }
    
    func testExportJSON() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(mode: .markers, x: x, y: y)]
        let figure = Figure(data: data)
        
        let testJsonFile = URL(fileURLWithPath: "export.json")
        try! figure.write(to: testJsonFile, as: .JSON)
    }

}
