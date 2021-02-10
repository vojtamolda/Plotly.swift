import XCTest
import Plotly
import CSV


// https://plot.ly/javascript/mixed-subplots/
final class MixedSubplots: XCTestCase {
    static var allTests = [
        ("testMixedSubplots", testMixedSubplots)
    ]

    struct Volcano: Decodable {
        let number, name, country, region: String
        let latitude, longitude: Double
        let elevation: Int?
        let type, status, lastKnown: String

        enum CodingKeys: String, CodingKey {
            case number = "Number", name = "Volcano Name", country = "Country", region = "Region"
            case latitude = "Latitude", longitude = "Longitude"
            case elevation = "Elev"
            case type = "Type", status = "Status", lastKnown = "Last Known"
        }
    }

    class func downloadVolcanos() -> [Volcano] {
        let url = URL(string: "https://raw.githubusercontent.com/plotly/datasets/master/volcano_db.csv")!
        let contents = try! String(contentsOf: url, encoding: .ascii)
        let reader = try! CSVReader(string: contents, hasHeaderRow: true)

        return reader.map { _ in try! CSVRowDecoder().decode(Volcano.self, from: reader) }
    }

    // https://plot.ly/javascript/mixed-subplots/#mixed-subplots
    func testMixedSubplots() {
        let volcanos = Self.downloadVolcanos()

        let trace1 = Scatter3D(
            showLegend: false,
            x: volcanos.map { $0.status },
            y: volcanos.map { $0.type },
            z: volcanos.map { $0.elevation ?? 0 },
            text: .variable(volcanos.map { $0.country }),
            mode: .markers,
            marker: .init(
                size: 2,
                line: .init(
                    coloring: .constant(.transparent)
                ),
                coloring: .colorScale(volcanos.map { Double($0.elevation ?? 0) }),
                colorScale: .reds
            ),
            hoverInfo: [.x, .y, .z, .text],
            scene: .init(
                uid: 1,
                domain: .init(x: [0.55, 1], y: [0, 0.6]),
                xAxis: .init(
                    title: .init(text: "Status"),
                    showTickLabels: false,
                    showGrid: true,
                    gridColor: .white
                ),
                yAxis: .init(
                    title: .init(text: "Type"),
                    showTickLabels: false,
                    showGrid: true,
                    gridColor: .white
                ),
                zAxis: .init(
                    title: .init(text: "Elevation"),
                    showTickLabels: false,
                    showGrid: true,
                    gridColor: .white
                )
            )
        )

        let trace2 = Histogram<[Int?], [Int]>(
            showLegend: false,
            hoverInfo: [.x, .y],
            x: volcanos.map { $0.elevation },
            marker: Marker(
                coloring: .constant(.red)
            ),
            xAxis: .init(
                uid: 2,
                tickAngle: 45,
                tickSuffix: "m",
                domain: [0.6, 1]
            ),
            yAxis: .init(
                uid: 2,
                showGrid: false,
                domain: [0.7, 1]
            )
        )
        trace2.xAxis.anchor = .yAxis(trace2.yAxis)
        trace2.yAxis.anchor = .xAxis(trace2.xAxis)

        let trace3 = ScatterGeo<[Double], [Double]>(
            showLegend: false,
            longitude: volcanos.map { $0.longitude },
            latitude: volcanos.map { $0.latitude },
            locationMode: .countryNames,
            mode: .markers,
            text: .variable(volcanos.map { String($0.elevation ?? 0) }),
            marker: ScatterGeo<[Double], [Double]>.GradientMarker(
                symbol: .circle,
                opacity: 0.8,
                size: 4,
                line: .init(width: 1),
                coloring: .colorScale(volcanos.map { Double($0.elevation ?? 0) }),
                colorScale: .reds
            ),
            hoverInfo: .text,
            geo: Geo(
                uid: 3,
                domain: .init(
                    x: [0, 0.45],
                    y: [0.02, 0.98]
                ),
                scope: .world,
                projection: .init(type: .orthographic),
                showLand: true,
                landColor: .RGB(250, 250, 250),
                showOcean: true,
                oceanColor: .RGB(6, 66, 115),
                showLakes: true,
                lakeColor: .RGB(127, 205, 255),
                showCountries: true,
                countryColor: .RGB(217, 217, 217),
                countryWidth: 0.5,
                subUnitWidth: 0.5,
                backgroundColor: .black
            )
        )

        let layout = Layout(
            font: .init(color: .white),
            title: "Volcano Database: Elevation",
            height: 600,
            paperBackgroundColor: .black,
            plotBackgroundColor: .black,
            annotations: [
                .init(
                    text: "Source: NOAA",
                    showArrow: false,
                    xReference: .paper, x: 0,
                    yReference: .paper, y: 0
                )
            ]
        )

        let figure = Figure(data: [trace1, trace2, trace3], layout: layout)
        output(figure)
    }
}
