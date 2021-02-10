import Foundation
import XCTest
import Plotly


/// https://plotly.com/python/animations/
final class Buttons: XCTestCase {
    static var allTests = [
        ("testSimplePlayButton", testSimplePlayButton),
        ("testMovingPointOnACurve", testMovingPointOnACurve),
        ("testMovingFrenetFrameAlongACurve", testMovingFrenetFrameAlongACurve),
        ("testDefiningNamedFrames", testDefiningNamedFrames)
    ]

    /// https://plotly.com/python/animations/
    func testSimplePlayButton() {
        let trace = Scatter(
            x: [0, 1],
            y: [0, 1],
            xAxis: .init(autoRange: .off, range: [0, 5]),
            yAxis: .init(autoRange: .off, range: [0, 5])
        )
        let layout = Layout(
            title: .init(text: "Start Title"),
            updateMenus: [
                .init(
                    type: .buttons,
                    buttons: [.init(method: .animate, args: [.null], label: "▶")]
                )
            ]
        )

        var trace1 = trace
        trace1.x = [1, 2]
        trace1.y = [1, 2]
        let frame1 = Frame(data: [trace1])
        
        var trace2 = trace
        trace2.x = [1, 4]
        trace2.y = [1, 4]
        let frame2 = Frame(data: [trace2])

        var trace3 = trace
        trace3.x = [3, 4]
        trace3.y = [3, 4]
        var layout3 = layout
        layout3.title?.text = "End Title"
        let frame3 = Frame(data: [trace3], layout: layout3)
        
        let figure = Figure(data: [trace], layout: layout, frames: [frame1, frame2, frame3])
        output(figure)
    }
    
    /// https://plotly.com/python/animations/
    func testMovingPointOnACurve() {
        // trajectory
        let t = stride(from: -1.0, through: +1.0, by: 1/100)
        let xt = t.map { t in t + t * t }
        let yt = t.map { t in t - t * t }
        
        // point position
        let s = stride(from: -1.0, through: +1.0, by: 1/50)
        let xs = s.map { s in s + s * s }
        let ys = s.map { s in s - s * s }

        let curve = Scatter(
            x: xt, y: yt,
            mode: .lines,
            line: .init(color: .blue, width: 2),
            xAxis: .init(
                autoRange: .off,
                range: [.double(xt.min()! - 1.5), .double(xt.max()! + 1.5)],
                zeroLine: false
            ),
            yAxis: .init(
                autoRange: .off,
                range: [.double(yt.min()! - 1.5), .double(yt.max()! + 1.5)],
                zeroLine: false
            )
        )

        let point = Scatter(
            x: [xs[0]], y: [ys[0]],
            mode: .markers,
            marker: .init(size: 10, coloring: .constant(.red)),
            xAxis: curve.xAxis,
            yAxis: curve.yAxis
        )

        let layout = Layout(
            title: "Kinematic Generation of a Planar Curve",
            hoverMode: .closest,
            updateMenus: [
                .init(
                    type: .buttons,
                    buttons: [.init(method: .animate, args: [.null], label: "▶")]
                )
            ]
        )
        
        let frames = zip(xs, ys).map { (x, y) -> Frame in
            var currentPoint = point
            (currentPoint.x, currentPoint.y) = ([x], [y])
            return Frame(data: [currentPoint])
        }

        let figure = Figure(data: [point, curve], layout: layout, frames: frames)
        output(figure)
    }
    
    /// https://plotly.com/python/animations/
    func testMovingFrenetFrameAlongACurve() {
        // trajectory
        let t = stride(from: -1.0, through: +1.0, by: 1/100)
        let xt = t.map { t in t + t * t }
        let yt = t.map { t in t - t * t }
        
        // point positon
        let s = stride(from: -1.0, through: +1.0, by: 1/50)
        let xs = s.map { s in s + s * s }
        let ys = s.map { s in s - s * s }
        
        // point velocity
        let vxs = s.map { s in 1 + 2 * s }
        let vys = s.map { s in 1 - 2 * s }
        let norms = zip(vxs, vys).map { (vx, vy) in sqrt(vx * vx + vy * vy) }
        
        // point tangent vector
        let txs = zip(vxs, norms).map { (vx, norm) in vx / norm }
        let tys = zip(vys, norms).map { (vy, norm) in vy / norm }
        
        // point normal vector
        let nxs = tys.map { ty in -ty }
        let nys = txs.map { tx in +tx }

        // tangent vector end-point
        let xend = zip(xs, txs).map { (x, tx) in x + tx }
        let yend = zip(ys, tys).map { (y, ty) in y + ty }

        // normal vector end-point
        let xnoe = zip(xs, nxs).map { (x, nx) in x + nx }
        let ynoe = zip(ys, nys).map { (y, ny) in y + ny }


        let curve = Scatter(
            name: "curve",
            x: xt, y: yt,
            mode: .lines,
            line: .init(color: .blue, width: 2),
            xAxis: .init(
                autoRange: .off,
                range: [.double(xt.min()! - 1.5), .double(xt.max()! + 1.5)],
                zeroLine: false
            ),
            yAxis: .init(
                autoRange: .off,
                range: [.double(yt.min()! - 1.5), .double(yt.max()! + 1.5)],
                zeroLine: false
            )
        )

        let frenetFrame = Scatter(
            name: "frame",
            x: [xs[0], xend[0], nil, xs[0], xnoe[0]],
            y: [ys[0], yend[0], nil, ys[0], ynoe[0]],
            mode: .lines,
            line: .init(color: .red, width: 2),
            xAxis: curve.xAxis,
            yAxis: curve.yAxis
        )

        let layout = Layout(
            title: "Kinematic Generation of a Planar Curve",
            width: 600, height: 600,
            hoverMode: .closest,
            updateMenus: [
                .init(
                    type: .buttons,
                    buttons: [.init(method: .animate, args: [.null], label: "▶")]
                )
            ]
        )

        let frames = (0 ..< xs.count).map { i -> Frame in
            var currentFrenetFrame = frenetFrame
            currentFrenetFrame.x = [xs[i], xend[i], nil, xs[i], xnoe[i]]
            currentFrenetFrame.y = [ys[i], yend[i], nil, ys[i], ynoe[i]]
            return Frame(data: [currentFrenetFrame])
        }

        let figure = Figure(data: [frenetFrame, curve], layout: layout, frames: frames)
        output(figure)
    }
    
    /// https://plotly.com/javascript/animations/#defining-named-frames-with-plotly.addframes
    func testDefiningNamedFrames() {
        let t = stride(from: -Double.pi, through: +Double.pi, by: 2 * Double.pi / 100)
        let sine = t.map { sin($0) }
        let cosine = t.map { cos($0) }
    
        let frames: [Frame] = [
            Frame(name: "sine", data: [Scatter(x: t, y: sine)]),
            Frame(name: "cosine", data: [Scatter(x: t, y: cosine)]),
            Frame(name: "circle", data: [Scatter(x: cosine, y: sine)])
        ]
    
        let trace = Scatter(
            x: t,
            y: sine,
            line: .init(simplify: false)
        )
    
        let layout = Layout(
            xAxis: .preset(range: .array([.double(-Double.pi), .double(+Double.pi)])),
            yAxis: .preset(range: [-1.2, 1.2]),
            updateMenus: [
                Layout.UpdateMenu(
                    type: .dropDown,
                    buttons: [
                        Layout.UpdateMenu.Button(method: .animate, args: [["sine"]], label: "sine"),
                        Layout.UpdateMenu.Button(method: .animate, args: [["cosine"]], label: "cosine"),
                        Layout.UpdateMenu.Button(method: .animate, args: [["circle"]], label: "circle")
                    ]
                )
            ]
        )

        let figure = Figure(data: [trace], layout: layout, frames: frames)
        output(figure)
    }

}
