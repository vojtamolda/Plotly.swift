import XCTest
import Plotly


// https://plot.ly/javascript/3d-subplots/
final class Subplots3D: XCTestCase {
    static var allTests = [
        ("testMultiple3DSubplots", testMultiple3DSubplots)
    ]

    // https://plot.ly/javascript/3d-subplots/#multiple-3d-subplots
    func testMultiple3DSubplots() {
        let trace1 = Mesh3D<[Double], [Double], [Double], [Int], [Int], [Int]>(
            x: (0...50).map { _ in Double.random(in: -75...0) },
            y: (0...50).map { _ in Double.random(in: 0...75) },
            z: (0...50).map { _ in Double.random(in: 0...75) },
            color: .RGB(255, 127, 80, 0.7),
            opacity: 0.5,
            scene: .init(
                domain: .init(
                    x: [0.0, 0.5],
                    y: [0.5, 1.0]
                )
            )
        )

        let trace2 = Mesh3D<[Double], [Double], [Double], [Int], [Int], [Int]>(
            x: (0...50).map { _ in Double.random(in: -75...0) },
            y: (0...50).map { _ in Double.random(in: 0...75) },
            z: (0...50).map { _ in Double.random(in: 0...75) },
            color: .pink,
            opacity: 0.5,
            scene: .init(
                domain: .init(
                    x: [0.5, 1.0],
                    y: [0.5, 1.0]
                )
            )
        )

        let trace3 = Mesh3D<[Double], [Double], [Double], [Int], [Int], [Int]>(
            x: (0...50).map { _ in Double.random(in: -75...0) },
            y: (0...50).map { _ in Double.random(in: -75...0) },
            z: (0...50).map { _ in Double.random(in: -75...0) },
            color: .RGB(33, 255, 100),
            opacity: 0.4,
            scene: .init(
                domain: .init(
                    x: [0.0, 0.33],
                    y: [0.0, 0.5]
                )
            )
        )

        let trace4 = Mesh3D<[Double], [Double], [Double], [Int], [Int], [Int]>(
            x: (0...50).map { _ in Double.random(in: -75...0) },
            y: (0...50).map { _ in Double.random(in: -75...0) },
            z: (0...50).map { _ in Double.random(in: -75...0) },
            color: .RGB(200, 100, 200),
            opacity: 0.5,
            scene: .init(
                domain: .init(
                    x: [0.33, 0.66],
                    y: [0.0, 0.5]
                )
            )
        )

        let trace5 = Mesh3D<[Double], [Double], [Double], [Int], [Int], [Int]>(
            x: (0...50).map { _ in Double.random(in: 0...100) },
            y: (0...50).map { _ in Double.random(in: 0...100) },
            z: (0...50).map { _ in Double.random(in: 0...100) },
            color: .RGB(0, 150, 200),
            opacity: 0.5,
            scene: .init(
                domain: .init(
                    x: [0.66, 0.99],
                    y: [0.0, 0.5]
                )
            )
        )

        let layout = Layout(
            height: 600,
            margin: .init(l: 0, r: 0, t: 0, b: 0, padding: 0)
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4, trace5], layout: layout)
        output(figure)
    }
}
