import XCTest
import Plotly
import CSV


// https://plot.ly/javascript/table-subplots/
final class TableSubplots: XCTestCase {
    static var allTests = [
        ("testTableAndChartSubplot", testTableAndChartSubplot)
    ]

    struct Transaction: Decodable {
        let id: Int
        let date: String
        let transactions, outputVolumeBTC: Int
        let marketPrice, hashRate: Int
        let costPerTransactionUSD, miningRevenueUSD: Int
        let transactionFeesBTC: Int

        enum CodingKeys: String, CodingKey {
            case id = ""
            case date = "Date"
            case transactions = "Number-transactions", outputVolumeBTC = "Output-volume(BTC)"
            case marketPrice = "Market-price", hashRate = "Hash-rate"
            case costPerTransactionUSD = "Cost-per-trans-USD", miningRevenueUSD = "Mining-revenue-USD"
            case transactionFeesBTC = "Transaction-fees-BTC"
        }
    }

    class func downloadTransactions() -> [Transaction] {
        let url = URL(string: "https://raw.githubusercontent.com/plotly/datasets/master/Mining-BTC-180.csv")!
        let contents = try! String(contentsOf: url, encoding: .ascii)
        let reader = try! CSVReader(string: contents, hasHeaderRow: true)

        return reader.map { _ in try! CSVRowDecoder().decode(Transaction.self, from: reader) }
    }

    // https://plot.ly/javascript/table-subplots/#table-and-chart-subplot
    func testTableAndChartSubplot() {
        let transactions = Self.downloadTransactions()

        let header = ["Date", "Transactions", "Output Volume [BTC]", "Market Price"]
        let cells = [
            transactions.map { String($0.date) },
            transactions.map { String($0.transactions) },
            transactions.map { String($0.outputVolumeBTC) },
            transactions.map { String($0.marketPrice) }
        ]

        let table = Table(
            domain: .init(
                  x: [0, 0.4],
                  y: [0, 1]
            ),
            columnWidth: [150, 200, 200, 150],
            columnOrder: [0, 1, 2, 3],
            header: Table.Header(
                values: header,
                align: .center,
                line: .init(
                    coloring: .constant(.RGB(50, 50, 50)),
                    width: 1
                ),
                fill: .init(
                    coloring: .constant(.RGB(235, 100, 230))
                ),
                font: .init(
                    family: "Arial",
                    size: 11,
                    coloring: .constant(.white)
                )

            ),
            cells: .init(
                values: cells,
                align: .center,
                line: .init(
                    coloring: .constant(.black),
                    width: 1
                ),
                fill: .init(
                    coloring: .variable([.RGB(235, 193, 238), .RGB(228, 222, 249, 0.65)])
                ),
                font: .init(
                    family: "Arial",
                    size: 10,
                    coloring: .constant(.black)
                )
            )
        )

        let trace1 = Scatter(
            name: "Hash-rate-TH/s",
            x: transactions.map { $0.date },
            y: transactions.map { $0.hashRate },
            mode: .lines,
            line: .init(
                color: 0x9748a1,
                width: 2
            ),
            xAxis: .init(
                uid: 1,
                mirror: .on,
                tickLength: 4,
                showTickLabels: false,
                tickFont: .init(size: 10),
                showLine: true,
                showGrid: true,
                gridColor: 0xffffff,
                zeroLine: false,
                domain: [0.5, 1]
            ),
            yAxis: .init(
                uid: 1,
                mirror: .on,
                tickLength: 4,
                tickFont: .init(size: 10),
                hoverFormat: ".2f",
                showLine: true,
                showGrid: true,
                gridColor: 0xffffff,
                zeroLine: false,
                domain: [0.66, 0.98]
            )
        )
        trace1.xAxis.anchor = .yAxis(trace1.yAxis)
        trace1.yAxis.anchor = .xAxis(trace1.xAxis)

        let trace2 = Scatter(
            name: "Mining-revenue-USD",
            x: transactions.map { $0.date },
            y: transactions.map { $0.miningRevenueUSD },
            mode: .lines,
            line: .init(
                color: 0xb04553,
                width: 2
            ),
            xAxis: .init(
                uid: 2,
                mirror: .on,
                tickLength: 4,
                showTickLabels: false,
                tickFont: .init(size: 10),
                showLine: true,
                showGrid: true,
                gridColor: 0xffffff,
                zeroLine: false,
                domain: [0.5, 1]
            ),
            yAxis: .init(
                uid: 2,
                mirror: .on,
                tickLength: 4,
                tickFont: .init(size: 10),
                tickPrefix: "$",
                hoverFormat: ".2f",
                showLine: true,
                showGrid: true,
                gridColor: 0xffffff,
                zeroLine: false,
                domain: [0.34, 0.64]
            )
        )
        trace2.xAxis.anchor = .yAxis(trace2.yAxis)
        trace2.yAxis.anchor = .xAxis(trace2.xAxis)

        let trace3 = Scatter(
            name: "Transaction-fees-BTC",
            x: transactions.map { $0.date },
            y: transactions.map { $0.transactionFeesBTC },
            mode: .lines,
            line: .init(
                color: 0xaf7bbd,
                width: 2
            ),
            xAxis: .init(
                uid: 3,
                mirror: .on,
                tickLength: 4,
                tickFont: .init(size: 10),
                showLine: true,
                showGrid: true,
                gridColor: 0xffffff,
                zeroLine: false,
                domain: [0.5, 1]
            ),
            yAxis: .init(
                uid: 3,
                mirror: .on,
                tickLength: 4,
                tickFont: .init(size: 10),
                tickPrefix: "₿",
                hoverFormat: ".2f",
                showLine: true,
                showGrid: true,
                gridColor: 0xffffff,
                zeroLine: false,
                domain: [0.0, 0.32]
            )
        )
        trace3.xAxis.anchor = .yAxis(trace3.yAxis)
        trace3.yAxis.anchor = .xAxis(trace3.xAxis)

        let layout = Layout(
            title: "Bitcoin mining stats for 180 days",
            plotBackgroundColor: .RGB(228, 222, 249, 0.65),
            showLegend: false
        )

        let figure = Figure(data: [table, trace1, trace2, trace3], layout: layout)
        output(figure)
    }
}
