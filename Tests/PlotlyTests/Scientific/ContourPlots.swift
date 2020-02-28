import XCTest
import Plotly


/// https://plot.ly/javascript/contour-plots/
final class ContourPlots: XCTestCase {
    static var allTests = [
        ("testSimpleContourPlot", testSimpleContourPlot),
        ("testBasicContourPlot", testBasicContourPlot),
        ("testXAndYCoordinatesContourPlot", testXAndYCoordinatesContourPlot),
        ("testColorScaleForContourPlot", testColorScaleForContourPlot),
        ("testCustomizingSpacingBetweenXAndYTicks", testCustomizingSpacingBetweenXAndYTicks),
        ("testConnectGapsBetweenNullValuesInZMatrix", testConnectGapsBetweenNullValuesInZMatrix),
        ("testSmoothingContourLines", testSmoothingContourLines),
        ("testSmoothingContourColoring", testSmoothingContourColoring),
        ("testContourLines", testContourLines),
        ("testContourLineLabels", testContourLineLabels),
        ("testCustomColorScale", testCustomColorScale),
        ("testColorBarTitle", testColorBarTitle),
        ("testColorBarSize", testColorBarSize),
        ("testColorBarTicks", testColorBarTicks)
    ]

    /// https://plot.ly/javascript/contour-plots/#simple-contour-plot
    func testSimpleContourPlot() {
        let size = 100.0

        let x: [Double] = [Double](stride(from: -2 * Double.pi, through: +2 * Double.pi, by: 4 * Double.pi / size))
        let z: [[Double]] = x.map { x1 in
            x.map { x2 in
                    let r2 = x1 * x1 + x2 * x2
                    return sin(x1) * cos(x1) * sin(r2) / log(r2 + 1)
                }
            }

        let contour = Contour(z: z, x: x, y: x)

        let figure = Figure(data: [contour])
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#basic-contour-plot
    func testBasicContourPlot() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ]
        )
        let layout = Layout(title: "Basic Contour Plot")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#setting-x-and-y-coordinates-in-a-contour-plot
    func testXAndYCoordinatesContourPlot() {
        let contour = Contour(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            x: [-9, -6, -5 , -3, -1],
            y: [0, 1, 4, 5, 7]
        )
        let layout = Layout(title: "Setting the X and Y Coordinates in a Contour Plot")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#colorscale-for-contour-plot
    func testColorScaleForContourPlot() {
        // The jet color scale is not the greatest example. Matlab switched to a different default in R2014
        // because the scale is not perceptually uniform and introduces hidden biases.
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            colorScale: ColorScale.Plotly.jet
        )

        let layout = Layout(title: "Colorscale for Contour Plot")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#customizing-spacing-between-x-and-y-ticks
    func testCustomizingSpacingBetweenXAndYTicks() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            x0: 5, dx: 10,
            y0: 10, dy: 10,
            colorScale: ColorScale.Plotly.jet
        )

        let layout = Layout(title: "Customizing Spacing Between X and Y Ticks")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#connect-the-gaps-between-null-values-in-the-z-matrix
    func testConnectGapsBetweenNullValuesInZMatrix() {
        let z = [
            [nil, nil, nil, 12, 13, 14, 15, 16],
            [nil, 1, nil, 11, nil, nil, nil, 17],
            [nil, 2, 6, 7, nil, nil, nil, 18],
            [nil, 3, nil, 8, nil, nil, nil, 19],
            [5, 4, 10, 9, nil, nil, nil, 20],
            [nil, nil, nil, 27, nil, nil, nil, 21],
            [nil, nil, nil, 26, 25, 24, 23, 22]
        ]

        let contour1 = Contour<[[Int?]], [Int], [Int]>(
            z: z,
            showScale: false,
            xAxis: "x1",
            yAxis: "y1"
        )
        let contour2 = Contour<[[Int?]], [Int], [Int]>(
            z: z,
            connectGaps: true,
            showScale: false,
            xAxis: "x2",
            yAxis: "y2"
        )

        let heatmap1 = Heatmap<[[Int?]], [Int]>(
            z: z,
            zSmooth: .best,
            showScale: false,
            xAxis: "x3",
            yAxis: "y3"
        )
        let heatmap2 = Heatmap<[[Int?]], [Int]>(
            z: z,
            zSmooth: .best,
            connectGaps: true,
            showScale: false,
            xAxis: "x4",
            yAxis: "y4"
        )

        let layout = Layout(
            title: "Connect the Gaps Between Null Values in the Z Matrix"
            // Fixme: The xAxis/yAxis domains can't be set
            //   xaxis: {domain: [0, 0.45],
            //    anchor: 'y1'},
            //  yaxis: {domain: [0.55, 1],
            //    anchor: 'x1'},
            //  xaxis2: {domain: [0.55, 1],
            //    anchor: 'y2'},
            //  yaxis2: {domain: [0.55, 1],
            //    anchor: 'x2'},
            //  xaxis3: {domain: [0, 0.45],
            //    anchor: 'y3'},
            //  yaxis3: {domain: [0, 0.45],
            //    anchor: 'x3'},
            //  xaxis4: {domain: [0.55, 1],
            //    anchor: 'y4'},
            //  yaxis4: {domain: [0, 0.45],
            //    anchor: 'x4'}
        )

        let figure = Figure(data: [contour1, contour2, heatmap1, heatmap2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#smoothing-contour-lines
    func testSmoothingContourLines() {
        let z = [
            [2, 4, 7, 12, 13, 14, 15, 16],
            [3, 1, 6, 11, 12, 13, 16, 17],
            [4, 2, 7, 7, 11, 14, 17, 18],
            [5, 3, 8, 8, 13, 15, 18, 19],
            [7, 4, 10, 9, 16, 18, 20, 19],
            [9, 10, 5, 27, 23, 21, 21, 21],
            [11, 14, 17, 26, 25, 24, 23, 22]
        ]

        let contour1 = Contour<[[Int]], [Int], [Int]>(
            z: z,
            line: .init(smoothing: 0.00),
            xAxis: "x1",
            yAxis: "y1"
        )
        let contour2 = Contour<[[Int]], [Int], [Int]>(
            z: z,
            line: .init(smoothing: 0.85),
            xAxis: "x2",
            yAxis: "y2"
        )

        let layout = Layout(
            title: "Smoothing Contour Lines"
            // Fixme: The xAxis/yAxis domains can't be set
            //   xaxis: {domain: [0, 0.45],
            //    anchor: 'y1'},
            //  yaxis: {domain: [0.55, 1],
            //    anchor: 'x1'},
            //  xaxis2: {domain: [0.55, 1],
            //    anchor: 'y2'},
            //  yaxis2: {domain: [0.55, 1],
            //    anchor: 'x2'},
        )

        let figure = Figure(data: [contour1, contour2], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#smooth-contour-coloring
    func testSmoothingContourColoring() {
        let contour = Contour<[[Int]], [Int], [Int]>(
            z: [
                [2, 4, 7, 12, 13, 14, 15, 16],
                [3, 1, 6, 11, 12, 13, 16, 17],
                [4, 2, 7, 7, 11, 14, 17, 18],
                [5, 3, 8, 8, 13, 15, 18, 19],
                [7, 4, 10, 9, 16, 18, 20, 19],
                [9, 10, 5, 27, 23, 21, 21, 21],
                [11, 14, 17, 26, 25, 24, 23, 22]
            ],
            contours: .init(
                coloring: .heatmap
            )
        )

        let layout = Layout(title: "Smoothing Contour Coloring")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#contour-lines
    func testContourLines() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            contours: .init(
                coloring: .lines
            ),
            colorScale: ColorScale.Plotly.jet
        )

        let layout = Layout(title: "Contour Lines")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#contour-line-labels
    func testContourLineLabels() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            contours: .init(
                coloring: .heatmap,
                showLabels: true,
                labelFont: .init(
                    family: "Raleway",
                    size: 12,
                    color: .white
                )
            )
        )

        let layout = Layout(title: "Contour Plot with Labels")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#custom-colorscale-for-contour-plot
    func testCustomColorScale() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            colorScale: [
                0.00: .RGB(166, 206, 227),
                0.25: .RGB(31, 120, 180),
                0.45: .RGB(178, 223, 138),
                0.65: .RGB(51, 160, 44),
                0.85: .RGB(251, 154, 153),
                1.00: .RGB(227, 26, 28)
            ]
        )

        let layout = Layout(title: "Custom Contour Plot Colorscale")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#color-bar-title
    func testColorBarTitle() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            colorBar: .init(
                title: .init(
                    text: "Color Bar Title",
                    font: .init(
                        family: "Arial, sans-serif",
                        size: 14
                    ),
                    side: .right
                )
            )
        )

        let layout = Layout(title: "Color Bar with a Title")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#color-bar-size
    func testColorBarSize() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            colorBar: .init(
                thicknessMode: .pixels,
                thickness: 75,
                lengthMode: .fraction,
                length: 0.9,
                outlineWidth: 0
            )
        )

        let layout = Layout(title: "Colorbar Size for Contour Plots")

        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }

    /// https://plot.ly/javascript/contour-plots/#styling-color-bar-ticks-for-contour-plots
    func testColorBarTicks() {
        let contour = Contour<[[Double]], [Int], [Int]>(
            z: [
                [10, 10.625, 12.5, 15.625, 20],
                [5.625, 6.25, 8.125, 11.25, 15.625],
                [2.5, 3.125, 5.0, 8.125, 12.5],
                [0.625, 1.25, 3.125, 6.25, 10.625],
                [0, 0.625, 2.5, 5.625, 10]
            ],
            colorBar: .init(
                xPadding: 50,
                dTick: 1,
                ticks: .outside,
                tickLength: 10,
                tickWidth: 2,
                tickColor: .gray,
                showTickLabels: true,
                tickFont: .init(size: 15)
            )
        )

        let layout = Layout(title: "Styling Color Bar Ticks for Contour Plots")
        let figure = Figure(data: [contour], layout: layout)
        output(figure)
    }
}
