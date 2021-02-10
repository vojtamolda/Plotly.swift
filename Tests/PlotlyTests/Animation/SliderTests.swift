import XCTest
import Plotly
import CSV


/// https://plotly.com/python/sliders/
final class SliderTests: XCTestCase {
    static var allTests = [
        ("testSimpleSliderControl", testSimpleSliderControl),
        ("testGapminderSlider", testGapminderSlider),
        ("testMapAnimation", testMapAnimation)
    ]
    
    struct Country: Decodable {
        let country: String
        let year: Int
        let population: Double
        let continent: String
        let lifeExpectancy: Double
        let gdpPerCapita: Double
        let isoAlpha: String
        let isoNumber: Int

        enum CodingKeys: String, CodingKey {
            case country, year, population = "pop", continent
            case lifeExpectancy = "lifeExp", gdpPerCapita = "gdpPercap"
            case isoAlpha = "iso_alpha", isoNumber = "iso_num"
        }
    }
    
    class func downloadGapminder() -> [Country] {
        let url = URL(string: "https://raw.githubusercontent.com/plotly/datasets/master/gapminder_with_codes.csv")!
        let contents = try! String(contentsOf: url, encoding: .ascii)
        let reader = try! CSVReader(string: contents, hasHeaderRow: true)

        return reader.map { _ in try! CSVRowDecoder().decode(Country.self, from: reader) }
    }
    
    /// https://plotly.com/python/sliders/
    func testSimpleSliderControl() {
        var traces = stride(from: 0.0, through: 5.0, by: 0.1).map { frequency -> Trace in
            let time = stride(from: 0, through: 10, by: 0.01)
            let wave = time.map { sin(frequency * $0) }

            return Scatter(
                visible: .off,
                name: "𝜈 = \(frequency)",
                x: time,
                y: wave,
                line: .init(
                    color: 0x00ced1,
                    width: 6
                )
            )
        }

        let layout = Layout(
            sliders: [
                Layout.Slider(
                    active: 10,
                    steps: traces.enumerated().map { trace -> Layout.Slider.Step in
                        var visible = [InfoArray](repeating: .bool(false), count: traces.count)
                        visible[trace.offset] = .bool(true)

                        return Layout.Slider.Step(
                            method: .restyle,
                            args: ["visible", .array(visible)]
                        )
                    },
                    padding: .init(t: 50),
                    currentValue: .init(prefix: "Frequency: ")
                )
            ]
        )
        traces[Int(layout.sliders![0].active!)].visible = .on

        let figure = Figure(data: traces, layout: layout)
        output(figure)
    }
    
    /// https://plotly.com/javascript/gapminder-example/
    func testGapminderSlider() {
        let gapminder = Self.downloadGapminder()

        let customColors: [String: Color] = [
            "Asia": .RGB(171, 99, 250),
            "Europe": .RGB(230, 99, 250),
            "Africa": .RGB(99, 110, 250),
            "Americas": .RGB(25, 211, 243),
            "Oceania": .RGB(50, 170, 255)
        ]

        var groupedByYearAndContinent = [Int: [String: [Country]]]()
        for (year, groupedByYear) in Dictionary(grouping: gapminder, by: \.year) {
            groupedByYearAndContinent[year] = Dictionary(grouping: groupedByYear, by: \.continent)
        }

        var frames = [Frame]()
        var sliderSteps = [Layout.Slider.Step]()
        for (year, groupedByContinent) in groupedByYearAndContinent.sorted(by: { $0.key < $1.key }) {

            var traces = [Trace]()
            for (continent, countries) in groupedByContinent.sorted(by: {$0.key < $1.key} ) {
                
                let trace = Scatter(
                    name: continent,
                    ids: countries.map(\.country),
                    x: countries.map(\.lifeExpectancy),
                    y: countries.map(\.gdpPerCapita),
                    text: .variable(countries.map(\.country)),
                    mode: .markers,
                    marker: .init(
                        size: .variable(countries.map(\.population)),
                        sizeReference: 200_000,
                        sizeMode: .area,
                        coloring: .constant(customColors[continent]!)
                    )
                )
                traces.append(trace)
            }
            let frame = Frame(name: "\(year)", data: traces)
            frames.append(frame)
            
            let sliderStep = Layout.Slider.Step(
                method: .animate,
                args: [[.string("\(year)")], .object([
                       "mode": "immediate",
                       "transition": ["duration": 300],
                       "frame": ["duration": 300, "redraw": false]
                    ])
                ],
                label: "\(year)"
            )
            sliderSteps.append(sliderStep)
        }
        
        let playButton = Layout.UpdateMenu.Button(
            method: .animate,
            args: [.null, .object([
                    "mode": "immediate",
                    "fromcurrent": true,
                    "transition": ["duration": 300, "easing": "quadratic-in-out"],
                    "frame": ["duration": 500]
                ])
            ],
            label: "▶"
        )
        
        let pauseButton = Layout.UpdateMenu.Button(
            method: .animate,
            args: [[.null], .object([
                    "mode": "immediate",
                    "transition": ["duration": 0],
                    "frame": ["duration": 0, "redraw": false]
                ])
            ],
            label: "❚❚"
        )

        let layout = Layout(
            xAxis: .preset(
                title: "Life Expectancy",
                range: [30, 90]
            ),
            yAxis: .preset(
                title: "GDP per Capita",
                type: .log,
                range: [2, 5]
            ),
            updateMenus: [
                Layout.UpdateMenu(
                    type: .buttons,
                    direction: .left,
                    showActive: false,
                    buttons: [playButton, pauseButton],
                    x: 0.1, xAnchor: .right,
                    y: 0.0, yAnchor: .top,
                    padding: .init(t: 87, r: 10)
                )
            ],
            sliders: [
                Layout.Slider(
                    active: 0,
                    steps: sliderSteps,
                    length: 0.9,
                    x: 0.1,
                    padding: .init(t: 50, b: 10),
                    xAnchor: .left,
                    y: 0.0, yAnchor: .top,
                    transition: .init(duration: 300, easing: .cubicInOut),
                    currentValue: .init(
                        visible: true,
                        xAnchor: .right,
                        prefix: "Year: ",
                        font: .init(size: 20)
                    )
                )
            ]
        )

        let figure = Figure(data: frames[Int(layout.sliders![0].active!)].data,
                            layout: layout, frames: frames)
        output(figure)
    }
    
    /// https://plotly.com/javascript/map-animations/
    func testMapAnimation() {
        let gapminder = Self.downloadGapminder()
        
        let groupedByYear = Dictionary(grouping: gapminder, by: \.year)

        var frames = [Frame]()
        var sliderSteps = [Layout.Slider.Step]()
        for (year, countries) in groupedByYear.sorted(by: { $0.key < $1.key }) {

            let trace = Choropleth(
                locations: countries.map(\.isoAlpha),
                locationMode: .ISO3,
                z: countries.map(\.lifeExpectancy),
                text: .variable(countries.map(\.country)),
                zAuto: false, zMin: 30, zMax: 90,
                geo: .init(
                    scope: .world,
                    showLand: true, landColor: .lightGray,
                    showLakes: true, lakeColor: .white,
                    showCountries: true, countryColor: .white,
                    showSubunits: true, subUnitColor: .white
                )
            )
            
            let frame = Frame(name: "\(year)", data: [trace])
            frames.append(frame)
            
            let sliderStep = Layout.Slider.Step(
                method: .animate,
                args: [[.string("\(year)")], .object([
                       "mode": "immediate",
                       "transition": ["duration": 300],
                       "frame": ["duration": 300, "redraw": false]
                    ])
                ],
                label: "\(year)"
            )
            sliderSteps.append(sliderStep)
        }
        
        let playButton = Layout.UpdateMenu.Button(
            method: .animate,
            args: [.null, .object([
                    "mode": "immediate",
                    "fromcurrent": true,
                    "transition": ["duration": 300, "easing": "quadratic-in-out"],
                    "frame": ["duration": 500]
                ])
            ],
            label: "▶"
        )
        
        let pauseButton = Layout.UpdateMenu.Button(
            method: .animate,
            args: [[.null], .object([
                    "mode": "immediate",
                    "transition": ["duration": 0],
                    "frame": ["duration": 0, "redraw": false]
                ])
            ],
            label: "❚❚"
        )

        let layout = Layout(
            title: "World Life Expectency<br>1952 - 2007",
            updateMenus: [
                Layout.UpdateMenu(
                    type: .buttons,
                    direction: .left,
                    showActive: false,
                    buttons: [playButton, pauseButton],
                    x: 0.1, xAnchor: .right,
                    y: 0.0, yAnchor: .top,
                    padding: .init(t: 87, r: 10)
                )
            ],
            sliders: [
                Layout.Slider(
                    active: 0,
                    steps: sliderSteps,
                    length: 0.9,
                    x: 0.1,
                    padding: .init(t: 50, b: 10),
                    xAnchor: .left,
                    y: 0.0, yAnchor: .top,
                    transition: .init(duration: 300, easing: .cubicInOut),
                    currentValue: .init(
                        visible: true,
                        xAnchor: .right,
                        prefix: "Year: ",
                        font: .init(size: 20)
                    )
                )
            ]
        )

        let figure = Figure(data: frames[Int(layout.sliders![0].active!)].data,
                            layout: layout, frames: frames)
        output(figure)
    }
}
