import XCTest
import Plotly


/// https://plot.ly/javascript/line-and-scatter/
final class LineCharts: XCTestCase {
    static var allTests = [
        ("testBasicLinePlot", testBasicLinePlot),
        ("testLineAndScatterPlot", testLineAndScatterPlot),
        ("testAddingNamesToLineAndScatterPlot", testAddingNamesToLineAndScatterPlot),
        ("testLineAndScatterStyling", testLineAndScatterStyling),
        ("testStylingLinePlot", testStylingLinePlot),
        ("testColoredAndStyledScatterPlot", testColoredAndStyledScatterPlot),
        ("testLineShapeOptionsForInterpolation", testLineShapeOptionsForInterpolation),
        ("testGraphAndAxesTitles", testGraphAndAxesTitles),
        ("testLineDash", testLineDash),
        ("testConnectGapsBetweenData", testConnectGapsBetweenData),
        ("testLabelingLinesWithAnnotations", testLabelingLinesWithAnnotations)
    ]
    
    /// https://plot.ly/javascript/line-charts/#basic-line-plot
    func testBasicLinePlot() {
        let trace1 = Scatter(
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17]
        )
        let trace2 = Scatter(
            x: [1, 2, 3, 4],
            y: [16, 5, 11, 9]
        )
        let figure = Figure(data: [trace1, trace2])
        output(figure)
    }
    
    /// https://plot.ly/javascript/line-charts/#line-and-scatter-plot
    func testLineAndScatterPlot() {
        let trace1 = Scatter(
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17],
            mode: .markers
        )
        let trace2 = Scatter(
            x: [2, 3, 4, 5],
            y: [16, 5, 11, 9],
            mode: .lines
        )
        let trace3 = Scatter(
            x: [1, 2, 3, 4],
            y: [12, 9, 15, 12],
            mode: [.lines, .markers]
        )
        let layout = Layout(title: "Line and Scatter Plot")
        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }
    
    /// https://plot.ly/javascript/line-charts/#adding-names-to-line-and-scatter-plot
    func testAddingNamesToLineAndScatterPlot() {
        let trace1 = Scatter(
            name: "Markers",
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17],
            mode: .markers
        )
        let trace2 = Scatter(
            name: "Lines",
            x: [2, 3, 4, 5],
            y: [16, 5, 11, 9],
            mode: .lines
        )
        let trace3 = Scatter(
            name: "Scatter + Lines",
            x: [1, 2, 3, 4],
            y: [12, 9, 15, 12],
            mode: [.lines, .markers]
        )
        let layout = Layout(title: "Adding Names to Line and Scatter Plot")
        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }
    
    /// https://plot.ly/javascript/line-charts/#line-and-scatter-styling
    func testLineAndScatterStyling() {
        let trace1 = Scatter(
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 12,
                coloring: .constant(.RGB(219, 64, 82))
            )
        )
        let trace2 = Scatter(
            x: [2, 3, 4, 5],
            y: [16, 5, 11, 9],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                color: .RGB(55, 128, 191),
                width: 3
            )
        )
        let trace3 = Scatter(
            x: [1, 2, 3, 4],
            y: [12, 9, 15, 12],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(
                color: .RGB(128, 0, 128),
                width: 1
            ),
            marker: Shared.GradientMarker(
                size: 8,
                coloring: .constant(.RGB(128, 0, 128))
            )
        )
        let layout = Layout(title: "Line and Scatter Styling")
        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }
    
    /// https://plot.ly/javascript/line-charts/#styling-line-plot
    func testStylingLinePlot() {
        let trace1 = Scatter(
            name: "Red",
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                color: .RGB(219, 64, 82),
                width: 3
            )
        )
        let trace2 = Scatter(
            name: "Blue",
            x: [2, 3, 4, 5],
            y: [12, 9, 15, 12],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                color: .RGB(55, 128, 191),
                width: 1
            )
        )
        let layout = Layout(width: 500, height: 500)
        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-charts/#colored-and-styled-scatter-plot
    func testColoredAndStyledScatterPlot() {
        let trace1 = Scatter(
            name: "North America",
            x: [52698, 43117],
            y: [53, 31],
            text: ["United States", "Canada"],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 12,
                line: Shared.MarkerLine(
                    width: 0.5,
                    coloring: .constant(.white)),
                coloring: .constant(.RGB(164, 194, 244))
            )
        )
        let trace2 = Scatter(
            name: "Europe",
            x: [39317, 37236, 35650, 30066, 29570, 27159, 23557, 21046, 18007],
            y: [33, 20, 13, 19, 27, 19, 49, 44, 38],
            text: ["Germany", "Britain", "France", "Spain",
                   "Italy", "Czech Rep.", "Greece", "Poland"],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 12,
                coloring: .constant(.RGB(255, 217, 102))
            )
        )
        let trace3 = Scatter(
            name: "Asia/Pacific",
            x: [42952, 37037, 33106, 17478, 9813, 5253, 4692, 3899],
            y: [23, 42, 54, 89, 14, 99, 93, 70],
            text: ["Australia", "Japan", "South Korea", "Malaysia",
                   "China", "Indonesia", "Philippines", "India"],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 12,
                coloring: .constant(.RGB(234, 153, 153))
            )
        )
        let trace4 = Scatter(
            name: "Latin America",
            x: [19097, 18601, 15595, 13546, 12026, 7434, 5419],
            y: [43, 47, 56, 80, 86, 93, 80],
            text: ["Chile", "Argentina", "Mexico", "Venezuela",
                   "Venezuela", "El Salvador", "Bolivia"],
            mode: .markers,
            marker: Shared.GradientMarker(
                size: 12,
                coloring: .constant(.RGB(142, 124, 195))
            )
        )

        let layout = Layout(
            title: "Quarter 1 Growth",
            xAxis: Layout.XAxis(title: "GDP per Capita",
                                showGrid: true,
                                zeroLine: true),
            yAxis: Layout.YAxis(title: "Percent",
                                showLine: false)
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-charts/#line-shape-options-for-interpolation
    func testLineShapeOptionsForInterpolation() {
        let trace1 = Scatter(
            name: "linear",
            x: [1, 2, 3, 4, 5],
            y: [1, 3, 2, 3, 1],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(shape: .linear)
        )
        let trace2 = Scatter(
            name: "spline",
            x: [1, 2, 3, 4, 5],
            y: [6, 8, 7, 8, 6],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(shape: .spline, smoothing: 5)
        )
        let trace3 = Scatter(
            name: "vhv",
            x: [1, 2, 3, 4, 5],
            y: [11, 13, 12, 13, 11],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(shape: .vhv)
        )
        let trace4 = Scatter(
            name: "hvh",
            x: [1, 2, 3, 4, 5],
            y: [16, 18, 17, 18, 16],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(shape: .hvh)
        )
        let trace5 = Scatter(
            name: "vh",
            x: [1, 2, 3, 4, 5],
            y: [21, 23, 22, 23, 21],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(shape: .vh)
        )
        let trace6 = Scatter(
            name: "hv",
            x: [1, 2, 3, 4, 5],
            y: [26, 28, 27, 28, 26],
            mode: [.lines, .markers],
            line: Scatter.ShapedSmoothDashedLine(shape: .hv)
        )

        let layout = Layout(
            legend: Layout.Legend(
                font: Shared.Font(size: 16),
                traceOrder: .reversed,
                y: 0.5
            )
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4, trace5, trace6], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-charts/#graph-and-axes-titles
    func testGraphAndAxesTitles() {
        let trace1 = Scatter(
            name: "Scatter",
            x: [1, 2, 3, 4],
            y: [10, 15, 13, 17],
            mode: .markers
        )
        let trace2 = Scatter(
            name: "Lines",
            x: [2, 3, 4, 5],
            y: [16, 5, 11, 9],
            mode: .lines
        )
        let trace3 = Scatter(
            name: "Scatter and Lines",
            x: [1, 2, 3, 4],
            y: [12, 9, 15, 12],
            mode: [.lines, .markers]
        )

        let layout = Layout(
            title: "Title of the Graph",
            xAxis: Layout.XAxis(title: "x-axis title"),
            yAxis: Layout.YAxis(title: "y-axis title")
        )

        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-charts/#line-dash
    func testLineDash() {
        let trace1 = Scatter(
            name: "Solid",
            x: [1, 2, 3, 4, 5],
            y: [1, 3, 2, 3, 1],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                width: 4,
                dash: "solid"
            )
        )
        let trace2 = Scatter(
            name: "dashdot",
            x: [1, 2, 3, 4, 5],
            y: [6, 8, 7, 8, 6],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                width: 4,
                dash: "dashdot"
            )
        )
        let trace3 = Scatter(
            name: "Solid",
            x: [1, 2, 3, 4, 5],
            y: [11, 13, 12, 13, 11],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                width: 4,
                dash: "solid"
            )
        )
        let trace4 = Scatter(
            name: "dot",
            x: [1, 2, 3, 4, 5],
            y: [16, 18, 17, 18, 16],
            mode: .lines,
            line: Scatter.ShapedSmoothDashedLine(
                width: 4,
                dash: "dot"
            )
        )

        let layout = Layout(
            xAxis: Layout.XAxis(
                autoRange: .off,
                range: [0.75, 5.25]
            ),
            yAxis: Layout.YAxis(
                autoRange: .off,
                range: [0, 18.5]
            ),
            legend: Layout.Legend(font: Shared.Font(size: 16), traceOrder: .reversed, y: 0.5)
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-charts/#connect-gaps-between-data
    func testConnectGapsBetweenData() {
        let trace1 = Scatter(
            name: "Solid",
            x: [1, 2, 3, 4, 5, 6, 7, 8],
            y: [10, 15, Double.nan, 17, 14, 12, 10, Double.nan, 15],
            mode: [.markers, .lines],
            connectGaps: true
        )
        let trace2 = Scatter(
            name: "dashdot",
            x: [1, 2, 3, 4, 5, 6, 7, 8],
            y: [16, Double.nan, 13, 10, 8, Double.nan, 11, 12],
            mode: .lines,
            connectGaps: true
        )

        let layout = Layout(
            title: "Connect the Gaps Between Data",
            showLegend: false
        )

        let figure = Figure(data: [trace1, trace2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/line-charts/#labelling-lines-with-annotations
    func testLabelingLinesWithAnnotations() {
        let xData: [[Double]] = [
            [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
            [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
            [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
            [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013]
        ]
        let yData: [[Double]] = [
          [74, 82, 80, 74, 73, 72, 74, 70, 70, 66, 66, 69],
          [45, 42, 50, 46, 36, 36, 34, 35, 32, 31, 31, 28],
          [13, 14, 20, 24, 20, 24, 24, 40, 35, 41, 43, 50],
          [18, 21, 18, 21, 16, 14, 13, 18, 17, 16, 19, 23]
        ]
        let colors: [Color] = [.RGB(67, 67, 67, 1), .RGB(115, 115, 115, 1),
                               .RGB(49, 130, 189, 1), .RGB(189, 189, 189, 1)]
        let lineSize = [2, 2, 4, 2] as [Double]
        let labels = ["Television", "Newspaper", "Internet", "Radio"]

        var traces = [Trace]()
        for i in 0 ..< xData.count {
            let lineTrace = Scatter(
                x: xData[i], y: yData[i],
                mode: .lines,
                line: Scatter.ShapedSmoothDashedLine(
                    color: colors[i],
                    width: lineSize[i]
                )
            )
            let endpointsTrace = Scatter(
                x: [xData[i].first!, xData[i].last!],
                y: [yData[i].first!, yData[i].last!],
                mode: .markers,
                marker: Shared.GradientMarker(
                    size: 12,
                    coloring: .constant(colors[i])
                )
            )
            traces.append(lineTrace)
            traces.append(endpointsTrace)
        }

        var layout = Layout(
            autoSize: false,
            width: 600, height: 600,
            margin: Layout.Margin(
                l: 100, r: 20, t: 100,
                autoExpand: false
            ),
            showLegend: false,
            xAxis: Layout.XAxis(
                ticks: .outside,
                tickLength: 5,
                tickWidth: 2,
                tickColor: .RGB(204, 204, 204),
                showTickLabels: true,
                tickFont: Shared.Font(
                    family: "Arial",
                    size: 12,
                    color: .RGB(82, 82, 82)
                ),
                showLine: false,
                lineColor: .RGB(204, 204, 204),
                lineWidth: 2,
                showGrid: false
            ),
            yAxis: Layout.YAxis(
                showTickLabels: false,
                showLine: false,
                showGrid: false,
                zeroLine: false
            )
        )

        layout.annotations = [
            Layout.Annotation(
                    text: "Main Source For News",
                    font: Shared.Font(
                        family: "Arial",
                        size: 30,
                        color: .RGB(37, 37, 37)
                    ),
                    showArrow: false,
                    xReference: .paper, x: 0.0, xAnchor: .left,
                    yReference: .paper, y: 1.05, yAnchor: .bottom
            ),
            Layout.Annotation(
                    text: "Source: Pew Research Center & Storytelling with data",
                    font: Shared.Font(
                        family: "Arial",
                        size: 12,
                        color: .RGB(150, 150, 150)
                    ),
                    showArrow: false,
                    xReference: .paper, x: 0.5 , xAnchor: .center,
                    yReference: .paper, y: -0.1, yAnchor: .top
            )
        ]
        for i in 0 ..< xData.count {
            let firstPointAnnotation = Layout.Annotation(
                text: String(format: "\(labels[i]) %.0f%%", yData[i].first!),
                font: Shared.Font(
                    family: "Arial",
                    size: 16,
                    color: .black
                ),
                showArrow: false,
                xReference: .paper, x: 0.05, xAnchor: .right,
                y: .numeric(yData[i].first!), yAnchor: .middle
            )
            let lastPointAnnotation = Layout.Annotation(
                text: String(format: "%.0f%%", yData[i].last!),
                font: Shared.Font(
                    family: "Arial",
                    size: 16,
                    color: .black
                ),
                showArrow: false,
                xReference: .paper, x: 0.95, xAnchor: .left,
                y: .numeric(yData[i].last!), yAnchor: .middle
            )
            layout.annotations!.append(firstPointAnnotation)
            layout.annotations!.append(lastPointAnnotation)
        }

        let figure = Figure(data: traces, layout: layout)
        output(figure)
    }
}
