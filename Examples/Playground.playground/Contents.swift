import PlaygroundSupport
import AppKit

import Plotly


let x = [1.0, 2.0, 3.0, 4.0]
let y = [10.0, 15.0, 13.0, 17.0]
let data: [Trace] = [
    Scatter(name: "Scatter", x: x, y: y),
    Bar(name: "Bar", x: x, y: y)
]
let figure = Figure(data: data)

PlaygroundPage.current.liveView = figure.playgroundDescription as! NSView
