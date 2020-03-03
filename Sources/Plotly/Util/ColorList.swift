
/// Qualitative color scale or a sequence of colors.
///
/// Qualitative color sequences are appropriate for data without natural ordering, such
/// as categories, colors, names, countries and so on. The built-in static color sequences
/// are meant to be used mostly as a `Layout.colorWay` attribute.
public typealias ColorList = [Color]
extension ColorList {

    /// Qualitative color scales adapted from [ColorBrewer2](http://colorbrewer2.org).
    ///
    /// - Copyright: Licensed under the
    /// [Apache 2.0 license](http://colorbrewer2.org/export/LICENSE.txt).
    public enum Brewer {
        /// - Note: Original name is `Accent`.
        public static let accent: [Color] = [
            0x7fc97f,
            0xbeaed4,
            0xfdc086,
            0xffff99,
            0x386cb0,
            0xf0027f,
            0xbf5b17,
            0x666666
        ]
        /// - Note: Original name is `Dark2`.
        public static let dark: [Color] = [
            0x1b9e77,
            0xd95f02,
            0x7570b3,
            0xe7298a,
            0x66a61e,
            0xe6ab02,
            0xa6761d,
            0x666666
        ]
        /// - Note: Original name is `Paired`.
        public static let paired: [Color] = [
            0x8dd3c7,
            0xffffb3,
            0xbebada,
            0xfb8072,
            0x80b1d3,
            0xfdb462,
            0xb3de69,
            0xfccde5,
            0xd9d9d9,
            0xbc80bd,
            0xccebc5,
            0xffed6f
        ]
        /// - Note: Original name is `Pastel1`.
        public static let pastel1: [Color] = [
            0xfbb4ae,
            0xb3cde3,
            0xccebc5,
            0xdecbe4,
            0xfed9a6,
            0xffffcc,
            0xe5d8bd,
            0xfddaec,
            0xf2f2f2
        ]
        /// - Note: Original name is `Pastel2`.
        public static let pastel2: [Color] = [
            0xb3e2cd,
            0xfdcdac,
            0xcbd5e8,
            0xf4cae4,
            0xe6f5c9,
            0xfff2ae,
            0xf1e2cc,
            0xcccccc
        ]
        /// - Note: Original name is `Set1`.
        public static let set1: [Color] = [
            0xe41a1c,
            0x377eb8,
            0x4daf4a,
            0x984ea3,
            0xff7f00,
            0xffff33,
            0xa65628,
            0xf781bf,
            0x999999
        ]
        /// - Note: Original name is `Set2`.
        public static let set2: [Color] = [
            0x66c2a5,
            0xfc8d62,
            0x8da0cb,
            0xe78ac3,
            0xa6d854,
            0xffd92f,
            0xe5c494,
            0xb3b3b3
        ]
        /// - Note: Original name is `Set3`.
        public static let set3: [Color] = [
            0x8dd3c7,
            0xffffb3,
            0xbebada,
            0xfb8072,
            0x80b1d3,
            0xfdb462,
            0xb3de69,
            0xfccde5,
            0xd9d9d9,
            0xbc80bd,
            0xccebc5,
            0xffed6f
        ]
    }

    /// Qualitative color scales adapted from [CartoCOLORS](https://carto.com/carto-colors/).
    ///
    /// - Copyright: Licensed under the
    /// [Creative Commons - Attribution license](https://github.com/CartoDB/CartoColor/blob/master/README.md).
    public enum Carto {
        /// Qualitative color scale.
        /// - Note: Original name is `Antique`.
        public static let antique: [Color] = [
            .RGB(133, 92, 117),
            .RGB(217, 175, 107),
            .RGB(175, 100, 88),
            .RGB(115, 111, 76),
            .RGB(82, 106, 131),
            .RGB(98, 83, 119),
            .RGB(104, 133, 92),
            .RGB(156, 156, 94),
            .RGB(160, 97, 119),
            .RGB(140, 120, 93),
            .RGB(124, 124, 124)
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Bold`.
        public static let bold: [Color] = [
            .RGB(127, 60, 141),
            .RGB(17, 165, 121),
            .RGB(57, 105, 172),
            .RGB(242, 183, 1),
            .RGB(231, 63, 116),
            .RGB(128, 186, 90),
            .RGB(230, 131, 16),
            .RGB(0, 134, 149),
            .RGB(207, 28, 144),
            .RGB(249, 123, 114),
            .RGB(165, 170, 153)
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Pastel`.
        public static let pastel: [Color] = [
            .RGB(102, 197, 204),
            .RGB(246, 207, 113),
            .RGB(248, 156, 116),
            .RGB(220, 176, 242),
            .RGB(135, 197, 95),
            .RGB(158, 185, 243),
            .RGB(254, 136, 177),
            .RGB(201, 219, 116),
            .RGB(139, 224, 164),
            .RGB(180, 151, 231),
            .RGB(179, 179, 179)
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Prism`.
        public static let prism: [Color] = [
            .RGB(95, 70, 144),
            .RGB(29, 105, 150),
            .RGB(56, 166, 165),
            .RGB(15, 133, 84),
            .RGB(115, 175, 72),
            .RGB(237, 173, 8),
            .RGB(225, 124, 5),
            .RGB(204, 80, 62),
            .RGB(148, 52, 110),
            .RGB(111, 64, 112),
            .RGB(102, 102, 102)
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Safe`.
        public static let safe: [Color] = [
            .RGB(136, 204, 238),
            .RGB(204, 102, 119),
            .RGB(221, 204, 119),
            .RGB(17, 119, 51),
            .RGB(51, 34, 136),
            .RGB(170, 68, 153),
            .RGB(68, 170, 153),
            .RGB(153, 153, 51),
            .RGB(136, 34, 85),
            .RGB(102, 17, 0),
            .RGB(136, 136, 136)
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Vivid`.
        public static let vivid: [Color] = [
            .RGB(229, 134, 6),
            .RGB(93, 105, 177),
            .RGB(82, 188, 163),
            .RGB(153, 201, 69),
            .RGB(204, 97, 176),
            .RGB(36, 121, 108),
            .RGB(218, 165, 27),
            .RGB(47, 138, 196),
            .RGB(118, 78, 159),
            .RGB(237, 100, 90),
            .RGB(165, 170, 153)
        ]
    }

    /// Qualitative color scales imported from [Plotly.js](https://github.com/plotly/plotly.js) and
    /// [Plotly.py](https://github.com/plotly/plotly.py)..
    ///
    /// - Copyright: Licensed under the
    /// [MIT license](https://github.com/plotly/plotly.py/blob/master/LICENSE).
    public enum Plotly {
        /// Default color way or a qualitative color scale.
        public static let plotly: [Color] = [
            0x1f77b4,  // muted blue
            0xff7f0e,  // safety orange
            0x2ca02c,  // cooked asparagus green
            0xd62728,  // brick red
            0x9467bd,  // muted purple
            0x8c564b,  // chestnut brown
            0xe377c2,  // raspberry yogurt pink
            0x7f7f7f,  // middle gray
            0xbcbd22,  // curry yellow-green
            0x17becf   // blue-teal
        ]
        /// Default color way in Plotly 3.x.
        /// - Note: Original name is `Plotly`.
        public static let plotly3: [Color] = [
            0x636efa,
            0xef553b,
            0x00cc96,
            0xab63fa,
            0xffa15a,
            0x19d3f3,
            0xff6692,
            0xb6e880,
            0xff97ff,
            0xfecb52
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `D3`.
        public static let d3: [Color] = [
            0x1f77b4,
            0xff7f0e,
            0x2ca02c,
            0xd62728,
            0x9467bd,
            0x8c564b,
            0xe377c2,
            0x7f7f7f,
            0xbcbd22,
            0x17becf
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `G10`.
        public static let g10: [Color] = [
            0x3366cc,
            0xdc3912,
            0xff9900,
            0x109618,
            0x990099,
            0x0099c6,
            0xdd4477,
            0x66aa00,
            0xb82e2e,
            0x316395
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `T10`.
        public static let t10: [Color] = [
            0x4c78a8,
            0xf58518,
            0xe45756,
            0x72b7b2,
            0x54a24b,
            0xeeca3b,
            0xb279a2,
            0xff9da6,
            0x9d755d,
            0xbab0ac
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Alphabet`.
        public static let alphabet: [Color] = [
            0xaa0dfe,
            0x3283fe,
            0x85660d,
            0x782ab6,
            0x565656,
            0x1c8356,
            0x16ff32,
            0xf7e1a0,
            0xe2e2e2,
            0x1cbe4f,
            0xc4451c,
            0xdea0fd,
            0xfe00fa,
            0x325a9b,
            0xfeaf16,
            0xf8a19f,
            0x90ad1c,
            0xf6222e,
            0x1cffce,
            0x2ed9ff,
            0xb10da1,
            0xc075a6,
            0xfc1cbf,
            0xb00068,
            0xfbe426,
            0xfa0087
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Dark24`.
        public static let dark24: [Color] = [
            0x2e91e5,
            0xe15f99,
            0x1ca71c,
            0xfb0d0d,
            0xda16ff,
            0x222a2a,
            0xb68100,
            0x750d86,
            0xeb663b,
            0x511cfb,
            0x00a08b,
            0xfb00d1,
            0xfc0080,
            0xb2828d,
            0x6c7c32,
            0x778aae,
            0x862a16,
            0xa777f1,
            0x620042,
            0x1616a7,
            0xda60ca,
            0x6c4516,
            0x0d2a63,
            0xaf0038
        ]
        /// Qualitative color scale.
        /// - Note: Original name is `Light24`.
        public static let light24: [Color] = [
            0xfd3216,
            0x00fe35,
            0x6a76fc,
            0xfed4c4,
            0xfe00ce,
            0x0df9ff,
            0xf6f926,
            0xff9616,
            0x479b55,
            0xeea6fb,
            0xdc587d,
            0xd626ff,
            0x6e899c,
            0x00b5f7,
            0xb68e00,
            0xc9fbe5,
            0xff0092,
            0x22ffa7,
            0xe3ee9e,
            0x86ce00,
            0xbc7196,
            0x7e7dcd,
            0xfc6955,
            0xe48f72
        ]
    }

    /// Qualitative color scale appropriate for discontinuous, non-related data.
    public static let bold = Carto.bold
    /// Qualitative color scale appropriate for discontinuous, non-related data.
    public static let prism = Carto.prism
    /// Qualitative color scale appropriate for discontinuous, non-related data.
    public static let dark = Brewer.dark
    /// Qualitative color scale appropriate for discontinuous, non-related data.
    public static let set1 = Brewer.set1
    /// Default color sequence in Pltoly.
    public static let plotly = Plotly.plotly

    /// Creates a figure that shows all color lists next to each other.
    public static func swatch() -> Figure {
        let colorLists = [
            ("Brewer", [
                ("accent", Brewer.accent),
                ("dark", Brewer.dark),
                ("paired", Brewer.paired),
                ("pastel1", Brewer.pastel1),
                ("pastel2", Brewer.pastel2),
                ("set1", Brewer.set1),
                ("set2", Brewer.set2),
                ("set3", Brewer.set3)
            ]),
            ("Carto", [
                ("antique", Carto.antique),
                ("bold", Carto.bold),
                ("pastel", Carto.pastel),
                ("prism", Carto.prism),
                ("safe", Carto.safe),
                ("vivid", Carto.vivid)
            ]),
            ("Plotly", [
                ("plotly", Plotly.plotly),
                ("plotly3", Plotly.plotly3),
                ("d3", Plotly.d3),
                ("g10", Plotly.g10),
                ("t10", Plotly.t10),
                ("alphabet", Plotly.alphabet),
                ("light24", Plotly.light24),
                ("dark24", Plotly.dark24)
            ])
        ]
        return ColorList.createSwatchBarFigure(title: "Color List Swatch",
            colorLists: colorLists)
    }
}


fileprivate extension ColorList {
       /// Builds a figure that displays the color scales above each other for comparison.
    static func createSwatchBarFigure(title: String, colorLists: [(String, [(String, ColorList)])]) -> Figure {
        var layout = Layout(
            barMode: .stack,
            barNormalization: .fraction,
            title: .init(text: title),
            width: 600,
            margin: .init(autoExpand: true),
            showLegend: false,
            xAxis: [
                .init(visible: false)
            ],
            yAxis: [
                .init(autoMargin: true)
            ]
        )

        var swatches = [Trace]()
        for (category, categoryColorLists) in colorLists {
            for (name, colorList) in categoryColorLists {
                let swatch = Bar(
                    name: name,
                    hoverInfo: Shared.HoverInfo.none,
                    x: [Int](repeating: 1, count: colorList.count),
                    y: [[String](repeating: category, count: colorList.count),
                        [String](repeating: name, count: colorList.count)],
                    orientation: .h,
                    marker: Shared.Marker(
                        coloring: .variable(colorList)
                    ),
                    xAxis: layout.xAxis.first!,
                    yAxis: layout.yAxis.first!
                )
                swatches.append(swatch)
            }
        }

        layout.height = Double(swatches.count) * 40
        return Figure(data: swatches.reversed(), layout: layout)
    }
}
