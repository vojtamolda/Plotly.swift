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
        
        figure.write(toFile: "excluded.html", as: .HTML, javaScript: .included)
        figure.write(toFile: "online.html", as: .HTML, javaScript: .online)
        figure.write(toFile: "directory.html", as: .HTML, javaScript: .directory)
    }
    
    func testExportJSON() {
        let x = [1.0, 2.0, 3.0, 4.0]
        let y = [10.0, 15.0, 13.0, 17.0]
        let data = [Scatter(mode: .markers, x: x, y: y)]
        let figure = Figure(data: data)
        
        figure.write(toFile: "export.json", as: .JSON)
    }
}
