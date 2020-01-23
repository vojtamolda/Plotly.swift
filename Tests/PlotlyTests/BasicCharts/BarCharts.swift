import XCTest
import Plotly


/// https://plot.ly/javascript/bar-charts/
final class BarCharts: XCTestCase {

    static var allTests = [
        ("testBasicBarChart", testBasicBarChart),
        ("testGroupedBarChart", testGroupedBarChart),
        ("testStackedBarChart", testStackedBarChart),
        ("testBarChartWithHoverText", testBarChartWithHoverText),
        ("testBarChartWithDirectLabels", testBarChartWithDirectLabels),
        ("testGroupedBarChartWithDirectLabels", testGroupedBarChartWithDirectLabels),
        ("testBarChartWithRotatedLabels", testBarChartWithRotatedLabels),
        ("testCustomizingIndividualBarColors", testCustomizingIndividualBarColors),
        ("testCustomizingIndividualBarWidths", testCustomizingIndividualBarWidths),
        ("testCustomizingIndividualBarBase", testCustomizingIndividualBarBase),
        ("testColoredAndStyledBarChart", testColoredAndStyledBarChart),
        ("testWaterfallBarChart", testWaterfallBarChart),
        ("testBarChartWithRelativeBarmode", testBarChartWithRelativeBarmode)
    ]

    /// https://plot.ly/javascript/bar-charts/#basic-bar-chart
    func testBasicBarChart() {
        let trace = Bar(
            x: ["giraffes", "orangutans", "monkeys"],
            y: [20, 14, 23]
        )
        let figure = Figure(data: [trace])
        figure.write(toFile: "basicBarChart.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#grouped-bar-chart
    func testGroupedBarChart() {
        let trace1 = Bar(
            name: "SF Zoo",        
            x: ["giraffes", "orangutans", "monkeys"],
            y: [20, 14, 23]
        )
        let trace2 = Bar(
            name: "LA Zoo",
            x: ["giraffes", "orangutans", "monkeys"],
            y: [12, 18, 29]
        )
        let layout = Layout(
            barMode: .group
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        figure.write(toFile: "groupedBarChart.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#stacked-bar-chart
    func testStackedBarChart() {
        let trace1 = Bar(
            name: "SF Zoo",
            x: ["giraffes", "orangutans", "monkeys"],
            y: [20, 14, 23]
        )
        let trace2 = Bar(
            name: "LA Zoo",
            x: ["giraffes", "orangutans", "monkeys"],
            y: [12, 18, 29]
        )
        let layout = Layout(
            barMode: .stack
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        figure.write(toFile: "stackedBarChart.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#bar-chart-with-hover-text
    func testBarChartWithHoverText() {
        let trace = Bar(
            x: ["Liam", "Sophie", "Jacob", "Mia", "William", "Olivia"],
            y: [8.0, 8.0, 12.0, 12.0, 13.0, 20.0],
            text: ["4.17 below the mean", "4.17 below the mean", "0.17 below the mean",
                   "0.17 below the mean", "0.83 above the mean", "7.83 above the mean"],
            marker: Shared.Marker(
                color: .value(.RGB(142, 124, 195))
            )
        )
        let layout = Layout(
            barGap: 0.05,
            font: "Raleway, sans-serif",
            title: "Number of Graphs Made this Week",
            showLegend: false,
            xAxis: Layout.XAxis(
                tickAngle: -45
            ),
            yAxis: Layout.YAxis(
                gridWidth: 2,
                zeroLine: false
            )
        )
        let figure = Figure(data: [trace], layout: layout)
        figure.write(toFile: "barChartWithHoverText.html", as: .HTML)
    }
    
    /// https://plot.ly/javascript/bar-charts/#bar-chart-with-direct-labels
    func testBarChartWithDirectLabels() {
        let xValue = ["Product A", "Product B", "Product C"];
        let yValue = [20, 14, 23];

        let trace = Bar(
            hoverInfo: Shared.HoverInfo.none,
            x: xValue,
            y: yValue,
            text: .array(yValue.map { String($0) }),
            textPosition: .auto,
            marker: Shared.Marker(
                line: Shared.ColoredLine(
                    width: 1.5,
                    color: .value(.RGB(8, 48, 107))
                ),
                color: .value(.RGB(158, 202, 225)),
                opacity: 0.6
            )
        )
        let layout = Layout(
            barMode: .stack,
            title: "January 2013 Sales Report"
        )
        let figure = Figure(data: [trace], layout: layout)
        figure.write(toFile: "barChartWithDirectLabels.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#grouped-bar-chart-with-direct-labels
    func testGroupedBarChartWithDirectLabels() {
        let xValue = ["Product A", "Product B", "Product C"];
        let yValue1 = [20, 14, 23];
        let yValue2 = [24, 16, 20];

        let trace1 = Bar(
            hoverInfo: Shared.HoverInfo.none,
            x: xValue,
            y: yValue1,
            text: .array(yValue1.map { String($0) }),
            textPosition: .auto,
            marker: Shared.Marker(
                line: Shared.ColoredLine(
                    width: 1.5,
                    color: .value(.RGB(8, 48, 107))
                ),
                color: .value(.RGB(158, 202, 225)),
                opacity: 0.5
            )
        )
        let trace2 = Bar(
            hoverInfo: Shared.HoverInfo.none,
            x: xValue,
            y: yValue2,
            text: .array(yValue2.map { String($0) }),
            textPosition: .auto,
            marker: Shared.Marker(
                line: Shared.ColoredLine(
                    width: 1.5,
                    color: .value(.RGB(8, 48, 107))
                ),
                color: .value(.RGB(58, 200, 225, 0.5))
            )
        )
        let layout = Layout(
            title: "January 2013 Sales Report"
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        figure.write(toFile: "groupedBarChartWithDirectLabels.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#bar-chart-with-rotated-labels
    func testBarChartWithRotatedLabels() {
        let trace1 = Bar(
            name: "Primary Product",
            x: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            y: [20, 14, 25, 16, 18, 22, 19, 15, 12, 16, 14, 17],
            marker: Shared.Marker(
                color: .value(.RGB(49, 130, 189)),
                opacity: 0.7
            )
        )
        let trace2 = Bar(
            name: "Secondary Product",
            x: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            y: [19, 14, 22, 14, 16, 19, 15, 14, 10, 12, 12, 16],
            marker: Shared.Marker(
                color: .value(.RGB(204, 204, 204)),
                opacity: 0.5
            )
        )
        let layout = Layout(
            title: "January 2013 Sales Report",
            xAxis: Layout.XAxis(
                tickAngle: -45
            )
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        figure.write(toFile: "barChartWithRotatedLabels.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#customizing-individual-bar-colors
    func testCustomizingIndividualBarColors() {
        let trace = Bar(
            x: ["Feature A", "Feature B", "Feature C", "Feature D", "Feature E"],
            y: [20, 14, 23, 25, 22],
            marker: Shared.Marker(
                color: .colors([.RGB(204, 204, 204, 1), .RGB(222, 45, 38, 0.8), .RGB(204, 204, 204, 1),
                                .RGB(204, 204, 204, 1), .RGB(204, 204, 204, 1)])
            )
        )
        let layout = Layout(
            title: "Last Used Feature"
        )
        let figure = Figure(data: [trace], layout: layout)
        figure.write(toFile: "customizingIndividualBarColors.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#customizing-individual-bar-widths
    func testCustomizingIndividualBarWidths() {
        let trace = Bar(
            x: [1, 2, 3, 5.5, 10],
            y: [10, 8, 6, 4, 2],
            width: [0.8, 0.8, 0.8, 3.5, 4]
        )
        let figure = Figure(data: [trace])
        figure.write(toFile: "customizingIndividualBarWidths.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#customizing-individual-bar-base
    func testCustomizingIndividualBarBase() {
        let trace1 = Bar(
            name: "expenses",
            x: ["2016", "2017", "2018"],
            y: [500, 600, 700],
            hoverTemplate: "%{base}",
            base: .array([-500.0, -600.0, -700.0]),
            marker: Shared.Marker(
                color: .value(.named("red"))
            )
        )
        let trace2 = Bar(
            name: "revenue",
            x: ["2016", "2017", "2018"],
            y: [300, 400, 700],
            base: .value(0.0),
            marker: Shared.Marker(
                color: .value(.named("blue"))
            )
        )
        let figure = Figure(data: [trace1, trace2])
        figure.write(toFile: "customizingIndividualBarBase.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#colored-and-styled-bar-chart
    func testColoredAndStyledBarChart() {
        let trace1 = Bar(
            name: "Rest of world",
            x: [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003,
                2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012],
            y: [219, 146, 112, 127, 124, 180, 236, 207, 236,
                263, 350, 430, 474, 526, 488, 537, 500, 439],
            marker: Shared.Marker(
                color: .value(.RGB(55, 83, 109))
            )
        )
        let trace2 = Bar(
            name: "China",
            x: [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003,
                2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012],
            y: [16, 13, 10, 11, 28, 37, 43, 55, 56, 88,
                105, 156, 270, 299, 340, 403, 549, 499],
            marker: Shared.Marker(
                color: .value(.RGB(26, 118, 255))
            )
        )

        let layout = Layout(
            barMode: .group,
            barGap: 0.15,
            barGroupGap: 0.1,
            title: "US Export of Plastic Scrap",
            xAxis: Layout.XAxis(
                tickFont: Shared.Font(
                    size: 14,
                    color: .RGB(107, 107, 107)
                )
            ),
            yAxis: Layout.YAxis(
                title: Layout.YAxis.Title(
                    text: "USD (millions)",
                    font: Shared.Font(
                        size: 16,
                        color: .RGB(107, 107, 107)
                    )
                ),
                tickFont: Shared.Font(
                    size: 14,
                    color: .RGB(107, 107, 107)
                )
            ),
            legend: Layout.Legend(
                backgroundColor: .RGB(255, 255, 255, 0),
                borderColor: .RGB(255, 255, 255, 0),
                x: 0,
                y: 1
            )
        )
        let figure = Figure(data: [trace1, trace2], layout: layout)
        figure.write(toFile: "coloredAndStyledBarChart.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#waterfall-bar-chart
    func testWaterfallBarChart() {
        // Base
        let xData = ["Product<br>Revenue", "Services<br>Revenue", "Total<br>Revenue",
                     "Fixed<br>Costs", "Variable<br>Costs", "Total<br>Costs", "Total" ]
        let yData = [400, 660, 660, 590, 400, 400, 340];
        let textList = ["$430K", "$260K", "$690K", "$-120K", "$-200K", "$-320K", "$370K"];

        // Base
        let trace1 = Bar(
            x: xData,
            y: [0, 430, 0, 570, 370, 370, 0],
            marker: Shared.Marker(
                color: .value(.RGB(1, 1, 1, 0.0))
            )
        )

        // Revenue
        let trace2 = Bar(
            x: xData,
            y: [430, 260, 690, 0, 0, 0, 0],
            marker: Shared.Marker(
                line: Shared.ColoredLine(
                    width: 2,
                    color: .value(.RGB(55, 128, 191, 1.0))
                ),
                color: .value(.RGB(55, 128, 191, 0.7))
            )
        )

        // Cost
        let trace3 = Bar(
            x: xData,
            y: [0, 0, 0, 120, 200, 320, 0],
            marker: Shared.Marker(
                line: Shared.ColoredLine(
                    width: 2,
                    color: .value(.RGB(219, 64, 82, 1.0))
                ),
                color: .value(.RGB(219, 64, 82, 0.7))
            )
        )

        // Profit
        let trace4 = Bar(
            x: xData,
            y: [0, 0, 0, 0, 0, 0, 370],
            marker: Shared.Marker(
                line: Shared.ColoredLine(
                    width: 2,
                    color: .value(.RGB(50, 171, 96, 1.0))
                ),
                color: .value(.RGB(50, 171, 96, 0.7))
            )
        )

        var layout = Layout(
            barMode: .stack,
            title: "Annual Profit 2015",
            width: 600,
            height: 600,
            paperBackgroundColor: .RGB(245, 246, 249, 1),
            plotBackgroundColor: .RGB(245, 246, 249, 1),
            showLegend: false,
            annotations: []
        )
        for i in 0..<7 {
            let annotation = Layout.Annotation(
                text: textList[i],
                font: Shared.Font(
                    family: "Arial",
                    size: 14,
                    color: .RGB(245, 246, 249, 1)
                ),
                showArrow: false,
                x: .string(xData[i]),
                y: .numeric(Double(yData[i]))
            )
            layout.annotations?.append(annotation)
        }

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        figure.write(toFile: "waterfallBarChart.html", as: .HTML)
    }

    /// https://plot.ly/javascript/bar-charts/#bar-chart-with-relative-barmode
    func testBarChartWithRelativeBarmode() {
        let trace1 = Bar(
            name: "Trace1",
            x: [1, 2, 3, 4],
            y: [1, 4, 9, 16]
        )
        let trace2 = Bar(
            name: "Trace2",
            x: [1, 2, 3, 4],
            y: [6, -8, -4.5, 8]
        )
        let trace3 = Bar(
            name: "Trace3",
            x: [1, 2, 3, 4],
            y: [-15, -3, 4.5, -8]
        )
        let trace4 = Bar(
            name: "Trace4",
            x: [1, 2, 3, 4],
            y: [-1, 3, -3, -4]
        )

        let layout = Layout(
            barMode: .relative,
            title: "Relative Barmode",
            xAxis: Layout.XAxis(title: "X axis"),
            yAxis: Layout.YAxis(title: "Y axis")
        )

        let figure = Figure(data: [trace1, trace2, trace3, trace4], layout: layout)
        figure.write(toFile: "barChartWithRelativeBarmode.html", as: .HTML)
    }
}
