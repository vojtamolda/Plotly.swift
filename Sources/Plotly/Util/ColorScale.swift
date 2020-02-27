
/// Mapping from numerical values to colors.
///
/// Instead of constructing a custom color scale, in most situation it's desirable to pick one from a pre-defined
/// palette. There is a wide range of built-in scales that should suit nearly all applications. Key advantage of
/// these scales is that they address the technicalities to avoid hidden biases that can distort how people
/// naturally perceive the data.
///
/// ## Built-in Color Scales
///
/// Based on the type of data the built-in scales are suited to one can distinguish the following types:
///
/// - __Sequential__ - Vast majority of continuous data without any special properties.
/// - __Diverging__ - Continuous data with a natural mid-point or a critical value where roughly half
///   of the data is smaller and the other half is larger.
/// - __Cyclic__ - Periodic data that wrap back to the same value after reaching end-points. For example
///   tide height plotted on the globe.
///
/// Good way to pick one of the scales is to use the `swatch()` method that displays a figure with
/// the scales other. The following example displays all diverging scales:
/// ```
/// let diverging = ColorScale.Diverging.swatch()
/// // Also: Sequential, Cyclic, Ocean, Brewer, Carto, Plotly
/// diverging.show()
/// ```
///
/// Most popular color scales are exposed directly as static properties of `ColorScale` struct. The following
/// code displays a swatch of the most frequent used scales:
/// ```
/// let frequent = ColorScale.swatch()
/// frequent.show()
/// ```
///
/// ## Custom Color Scales
///
/// Color scale can be also created manually from a sequence of colors and optional normalizes scale values.
/// In most situations the desirable behavior is a smooth, linear interpolation between in-between the sequence
/// colors. However, it's also possible to create discontinuous scales with sharp jumps at particular thresholds.
///
/// The following example creates a custom color scale by linearly interpolating colors. The minimum/maximum
/// value of the data will be displayed in red/blue with the intermediate values interpolated through green.
/// The min/max value can be changed by manually setting `zMin`/`cMin` or `zMax`/`cMax` properties of the
/// `Trace` or `Marker` objects. Location of the green mid-point can be altered by `zMid`/`cMid` property in
/// a similar fashion.
/// ```
/// let rgb0: ColorScale = [.red, .green, .blue]
/// let rgb1 = ColorScale(interpolate: [.red, .green, .blue])
/// ```
///
/// The following example achieves the same result as above but builds the color scale fom a dictionary that
/// maps the scale values to colors:
/// ```
/// let rgb0: ColorScale = [0: .red, 0.5: .green, 1.0, .blue]
/// let rgb1 = ColorScale(interpolate: [0: .red, 0.5: .green, 1.0, .blue])
/// ```
///
/// The next code snippet creates a discontinuous black-white color scale with sharp jump below and above the
/// mid-point:
/// ```
/// let bw = ColorScale(interpolate: [(0: .white), (0.5: .white), (0.5, .black), (1.0, .black)])
/// ```
///
/// - SeeAlso: Color, ColorWay
/// - Remark: `.reversed()` returns the color scale flipped, so the min color becomes the max and vice versa.
///
public struct ColorScale: Encodable {

    /// Color scales adapted from [cmocean](https://matplotlib.org/cmocean/) project.
    ///
    /// - Copyright: Licensed under the
    /// [MIT license](https://github.com/matplotlib/cmocean/blob/master/LICENSE.txt).
    public enum Ocean {

        // MARK: Sequential

        /// The *thermal* colormap is sequential with dark blue representing lower, cooler values
        /// and transitioning through reds to yellow representing increased warmer values.
        public static let thermal: ColorScale = [
            .RGB(3, 35, 51),
            .RGB(13, 48, 100),
            .RGB(53, 50, 155),
            .RGB(93, 62, 153),
            .RGB(126, 77, 143),
            .RGB(158, 89, 135),
            .RGB(193, 100, 121),
            .RGB(225, 113, 97),
            .RGB(246, 139, 69),
            .RGB(251, 173, 60),
            .RGB(246, 211, 70),
            .RGB(231, 250, 90)
        ]
        /// The *haline* colormap is sequential, and might be used with dark blue representing
        /// lower salinity or fresher water, transitioning through greens to light yellow representing
        /// increased salinity or saltier water. This colormap is based on matplotlibs YlGnBu, but
        /// was recreated from scratch using the viscm tool.
        public static let haline: ColorScale = [
            .RGB(41, 24, 107),
            .RGB(42, 35, 160),
            .RGB(15, 71, 153),
            .RGB(18, 95, 142),
            .RGB(38, 116, 137),
            .RGB(53, 136, 136),
            .RGB(65, 157, 133),
            .RGB(81, 178, 124),
            .RGB(111, 198, 107),
            .RGB(160, 214, 91),
            .RGB(212, 225, 112),
            .RGB(253, 238, 153)
        ]
        /// The *solar* colormap is sequential from dark brown for low values to increasingly
        /// bright yellow to potentially represent an increase in radiation in the water.
        public static let solar: ColorScale = [
            .RGB(51, 19, 23),
            .RGB(79, 28, 33),
            .RGB(108, 36, 36),
            .RGB(135, 47, 32),
            .RGB(157, 66, 25),
            .RGB(174, 88, 20),
            .RGB(188, 111, 19),
            .RGB(199, 137, 22),
            .RGB(209, 164, 32),
            .RGB(217, 192, 44),
            .RGB(222, 222, 59),
            .RGB(224, 253, 74)
        ]
        /// The *ice* colormap is sequential from very dark blue (almost black) to very
        /// light blue (almost white). A use for this could be representations of sea ice.
        public static let ice: ColorScale = [
            .RGB(3, 5, 18),
            .RGB(25, 25, 51),
            .RGB(44, 42, 87),
            .RGB(58, 60, 125),
            .RGB(62, 83, 160),
            .RGB(62, 109, 178),
            .RGB(72, 134, 187),
            .RGB(89, 159, 196),
            .RGB(114, 184, 205),
            .RGB(149, 207, 216),
            .RGB(192, 229, 232),
            .RGB(234, 252, 253)
        ]
        /// The *gray* colormap is sequential from black to white, with uniform steps
        /// through perceptual colorspace. This colormap is generic to be used for any
        /// sequential dataset.
        public static let gray: ColorScale = [
            .RGB(0, 0, 0),
            .RGB(16, 16, 16),
            .RGB(38, 38, 38),
            .RGB(59, 59, 59),
            .RGB(81, 80, 80),
            .RGB(102, 101, 101),
            .RGB(124, 123, 122),
            .RGB(146, 146, 145),
            .RGB(171, 171, 170),
            .RGB(197, 197, 195),
            .RGB(224, 224, 223),
            .RGB(254, 254, 253)
        ]
        /// The *oxy* colormap is sequential for most of the colormap, representing the
        /// normal range of oxygen saturation in ocean water, and diverging 80% of the
        /// way into the colormap to represent a state of supersaturation. The bottom
        /// 20% of the colormap is colored reddish to highlight hypoxic or low oxygen
        /// water, but to still print relatively seamlessly into grayscale in case the red
        /// hue is not important for an application. The top 20% of the colormap, after
        /// the divergence, is colored yellow to highlight the supersaturated water. The
        /// minimum and maximum values of this colormap are meant to be controlled
        /// in order to properly place the low oxygen and supersaturated oxygen states
        /// properly. This colormap was developed for the Mississippi river plume area
        /// where both low and supersaturated conditions are regularly seen and
        /// monitored.
        public static let oxy = ColorScale(interpolate: [
            (0.0, .RGB(64, 5, 5)),
            (0.2, .RGB(143, 24, 8)),
            (0.2, .RGB(80, 80, 80)),
            (0.8, .RGB(244, 244, 244)),
            (0.8, .RGB(248, 254, 105)),
            (1.0, .RGB(221, 174, 25))
        ])
        /// The *deep* colormap is sequential from light yellow to potentially represent
        /// shallower water through pale green to increasingly dark blue and purple to
        /// represent increasing depth.
        public static let deep: ColorScale = [
            .RGB(253, 253, 204),
            .RGB(206, 236, 179),
            .RGB(156, 219, 165),
            .RGB(111, 201, 163),
            .RGB(86, 177, 163),
            .RGB(76, 153, 160),
            .RGB(68, 130, 155),
            .RGB(62, 108, 150),
            .RGB(62, 82, 143),
            .RGB(64, 60, 115),
            .RGB(54, 43, 77),
            .RGB(39, 26, 44)
        ]
        /// The *dense* colormap is sequential with whitish-blue for low values and
        /// increasing in purple with increasing value, which could be used to represent
        /// an increase in water density. Two examples of this colormap are shown below,
        /// from Texas A&M University gliders. This colormap is based on matplotlibs
        /// Purples, but was recreated from scratch using the viscm tool.
        public static let dense: ColorScale = [
            .RGB(230, 240, 240),
            .RGB(191, 221, 229),
            .RGB(156, 201, 226),
            .RGB(129, 180, 227),
            .RGB(115, 154, 228),
            .RGB(117, 127, 221),
            .RGB(120, 100, 202),
            .RGB(119, 74, 175),
            .RGB(113, 50, 141),
            .RGB(100, 31, 104),
            .RGB(80, 20, 66),
            .RGB(54, 14, 36)
        ]
        /// The *algae* colormap is sequential with whitish-green for low values and
        /// increasing in green with increasing value, which could be used to represent
        /// an increase in chlorophyll in the water. Two examples of this colormap are
        /// shown below, from Texas A&M University gliders. This colormap is based
        /// on matplotlibs Greens, but was recreated from scratch using the viscm
        /// tool.
        public static let algae: ColorScale = [
            .RGB(214, 249, 207),
            .RGB(186, 228, 174),
            .RGB(156, 209, 143),
            .RGB(124, 191, 115),
            .RGB(85, 174, 91),
            .RGB(37, 157, 81),
            .RGB(7, 138, 78),
            .RGB(13, 117, 71),
            .RGB(23, 95, 61),
            .RGB(25, 75, 49),
            .RGB(23, 55, 35),
            .RGB(17, 36, 20)
        ]
        /// The *matter* colormap is sequential with whitish-yellow for low values and increasing
        /// in pink with increasing value, and could be used to represent an increase in material in
        /// the water. Two examples of this colormap are shown below, from Texas A&M University
        /// gliders.
        public static let matter: ColorScale = [
            .RGB(253, 237, 176),
            .RGB(250, 205, 145),
            .RGB(246, 173, 119),
            .RGB(240, 142, 98),
            .RGB(231, 109, 84),
            .RGB(216, 80, 83),
            .RGB(195, 56, 90),
            .RGB(168, 40, 96),
            .RGB(138, 29, 99),
            .RGB(107, 24, 93),
            .RGB(76, 21, 80),
            .RGB(47, 15, 61)
        ]
        /// The *turbid* colormap is sequential from light to dark brown and could be used to
        /// represent an increase in sediment in the water.
        public static let turbid: ColorScale = [
            .RGB(232, 245, 171),
            .RGB(220, 219, 137),
            .RGB(209, 193, 107),
            .RGB(199, 168, 83),
            .RGB(186, 143, 66),
            .RGB(170, 121, 60),
            .RGB(151, 103, 58),
            .RGB(129, 87, 56),
            .RGB(104, 72, 53),
            .RGB(80, 59, 46),
            .RGB(57, 45, 37),
            .RGB(34, 30, 27)
        ]
        /// The *speed* colormap is sequential from light greenish yellow representing low
        /// values to dark yellowish green representing large values. This colormap is the
        /// positive half of the *delta* colormap. An example of this colormap is from a
        /// numerical simulation of the Texas and Louisiana shelf.
        public static let speed: ColorScale = [
            .RGB(254, 252, 205),
            .RGB(239, 225, 156),
            .RGB(221, 201, 106),
            .RGB(194, 182, 59),
            .RGB(157, 167, 21),
            .RGB(116, 153, 5),
            .RGB(75, 138, 20),
            .RGB(35, 121, 36),
            .RGB(11, 100, 44),
            .RGB(18, 78, 43),
            .RGB(25, 56, 34),
            .RGB(23, 35, 18)
        ]
        /// The *amp* colormap is sequential from whitish to dark red and could be used
        /// to represent an increase in wave height values. This colormap is the positive
        /// half of the *balance* colormap.
        public static let amp: ColorScale = [
            .RGB(241, 236, 236),
            .RGB(230, 209, 203),
            .RGB(221, 182, 170),
            .RGB(213, 156, 137),
            .RGB(205, 129, 103),
            .RGB(196, 102, 73),
            .RGB(186, 74, 47),
            .RGB(172, 44, 36),
            .RGB(149, 19, 39),
            .RGB(120, 14, 40),
            .RGB(89, 13, 31),
            .RGB(60, 9, 17)
        ]
        /// The *tempo* colormap is sequential from whitish to dark teal and could be used
        /// to represent an increase in wave period values. This colormap is the negative half
        /// of the *curl* colormap.
        public static let tempo: ColorScale = [
            .RGB(254, 245, 244),
            .RGB(222, 224, 210),
            .RGB(189, 206, 181),
            .RGB(153, 189, 156),
            .RGB(110, 173, 138),
            .RGB(65, 157, 129),
            .RGB(25, 137, 125),
            .RGB(18, 116, 117),
            .RGB(25, 94, 106),
            .RGB(28, 72, 93),
            .RGB(25, 51, 80),
            .RGB(20, 29, 67)
        ]
        /// The *rain* colormap is sequential from light, dry colors to blue, wet colors,
        /// and could be used to plot amounts of rainfall.
        public static let rain: ColorScale = [
            .RGB(238, 237, 242),
            .RGB(222, 212, 204),
            .RGB(208, 189, 159),
            .RGB(171, 175, 134),
            .RGB(131, 162, 121),
            .RGB(87, 149, 111),
            .RGB(36, 134, 109),
            .RGB(4, 114, 109),
            .RGB(14, 93, 104),
            .RGB(32, 70, 92),
            .RGB(37, 49, 73),
            .RGB(33, 26, 56)
        ]
        /// The *phase* colormap is circular, spanning all hues at a set lightness value. This
        /// map is intended to be used for properties such as wave phase and tidal phase which
        /// wrap around from 0˚ to 360˚ to 0˚ and should be represented without major perceptual
        /// jumps in the colormap.
        public static let phase: ColorScale = [
            .RGB(167, 119, 12),
            .RGB(195, 98, 48),
            .RGB(215, 72, 88),
            .RGB(222, 42, 146),
            .RGB(207, 47, 208),
            .RGB(173, 82, 240),
            .RGB(126, 114, 240),
            .RGB(69, 136, 211),
            .RGB(30, 147, 167),
            .RGB(11, 152, 125),
            .RGB(50, 153, 68),
            .RGB(123, 139, 15),
            .RGB(167, 119, 12)
        ]

        // MARK: Diverging

        /// The *topo* colormap has two distinct parts: one that is shades of blue and
        /// yellow to represent water depths (this is the *deep* colormap) and one that
        /// is shades of browns and greens to represent land elevation.
        public static let topo = ColorScale(interpolate: [
            (0.0, .RGB(39, 26, 44)),
            (0.1, .RGB(65, 65, 125)),
            (0.2, .RGB(64, 117, 152)),
            (0.3, .RGB(82, 169, 163)),
            (0.4, .RGB(146, 216, 164)),
            (0.5, .RGB(251, 253, 203)),
            (0.5, .RGB(13, 37, 20)),
            (0.6, .RGB(39, 81, 30)),
            (0.7, .RGB(107, 112, 60)),
            (0.8, .RGB(179, 145, 63)),
            (0.9, .RGB(216, 195, 139)),
            (1.0, .RGB(248, 253, 228))
        ])
        /// The *balance* colormap is diverging with dark blue to off-white to dark red
        /// representing negative to zero to positive values; this could be used to represent
        /// sea surface elevation, with deviations in the surface elevations as shades of
        /// color away from neutral off-white. In this case, shades of red have been chosen
        /// to represent sea surface elevation above the reference value (often mean sea
        /// level) to connect with warmer water typically being associated with an increase
        /// in the free surface, such as with the Loop Current in the Gulf of Mexico. An
        /// example of this colormap is from a numerical simulation of the Texas and
        /// Louisiana shelf. This colormap is based on matplotlibs RdBu, but was
        /// recreated from scratch using the viscm tool.
        public static let balance: ColorScale = [
            .RGB(23, 28, 66),
            .RGB(40, 56, 136),
            .RGB(10, 94, 190),
            .RGB(55, 135, 185),
            .RGB(116, 169, 189),
            .RGB(182, 200, 207),
            .RGB(240, 236, 235),
            .RGB(222, 187, 176),
            .RGB(208, 138, 115),
            .RGB(191, 89, 59),
            .RGB(166, 34, 36),
            .RGB(115, 14, 39),
            .RGB(60, 9, 17)
        ]
        /// The *delta* colormap is diverging from darker blues to just off-white through shades
        /// of yellow green and could be used to represent diverging velocity values around a
        /// critical value (usually zero). This colormap was inspired by
        /// [Francesca Samsels](http://www.francescasamsel.com/) similar
        /// colormap, but generated from scratch using the viscm tool.
        public static let delta: ColorScale = [
            .RGB(16, 31, 63),
            .RGB(38, 59, 138),
            .RGB(28, 103, 159),
            .RGB(51, 144, 169),
            .RGB(108, 181, 179),
            .RGB(186, 213, 203),
            .RGB(254, 251, 217),
            .RGB(224, 205, 114),
            .RGB(170, 172, 32),
            .RGB(96, 146, 11),
            .RGB(24, 114, 39),
            .RGB(19, 75, 42),
            .RGB(23, 35, 18)
        ]
        /// The *curl* colormap is diverging from darker teal to just off-white through shades
        /// of magenta and could be used to represent diverging vorticity values around a
        /// critical value (usually zero).
        public static let curl: ColorScale = [
            .RGB(20, 29, 67),
            .RGB(28, 69, 91),
            .RGB(20, 109, 114),
            .RGB(43, 148, 127),
            .RGB(126, 178, 143),
            .RGB(195, 209, 185),
            .RGB(254, 245, 244),
            .RGB(233, 194, 175),
            .RGB(219, 140, 119),
            .RGB(195, 89, 97),
            .RGB(157, 48, 96),
            .RGB(107, 22, 90),
            .RGB(51, 13, 53)
        ]
        /// The *diff* colormap is diverging, with one side shades of blues and one side
        /// shades of browns.
        public static let diff: ColorScale = [
            .RGB(7, 34, 63),
            .RGB(26, 71, 101),
            .RGB(71, 103, 125),
            .RGB(115, 136, 151),
            .RGB(160, 171, 180),
            .RGB(207, 210, 214),
            .RGB(245, 241, 240),
            .RGB(213, 207, 194),
            .RGB(176, 166, 142),
            .RGB(141, 129, 92),
            .RGB(108, 95, 47),
            .RGB(67, 65, 25),
            .RGB(28, 34, 6)
        ]
        /// The *tarn* colormap is diverging, with one side dry shades of browns and
        /// the other a range of greens and blues. The positive end of the colormap is
        /// meant to reflect the colors in *rain* and thus be a complementary colormap
        /// to *rain* for rain anomaly (around 0 or some other critical value).
        public static let tarn: ColorScale = [
            .RGB(22, 35, 13),
            .RGB(50, 71, 12),
            .RGB(107, 96, 29),
            .RGB(168, 118, 48),
            .RGB(211, 151, 103),
            .RGB(231, 201, 177),
            .RGB(252, 247, 245),
            .RGB(216, 210, 178),
            .RGB(150, 177, 152),
            .RGB(86, 145, 133),
            .RGB(31, 111, 120),
            .RGB(17, 72, 102),
            .RGB(15, 30, 79)
        ]

        /// Creates a figure that shows all _Ocean_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchBars = [
                Self.thermal.createSwatchBar(category: "Sequential", name: "thermal"),
                Self.haline.createSwatchBar(category: "Sequential", name: "haline"),
                Self.solar.createSwatchBar(category: "Sequential", name: "solar"),
                Self.ice.createSwatchBar(category: "Sequential", name: "ice"),
                Self.gray.createSwatchBar(category: "Sequential", name: "gray"),
                Self.oxy.createSwatchBar(category: "Sequential", name: "oxy"),
                Self.deep.createSwatchBar(category: "Sequential", name: "deep"),
                Self.dense.createSwatchBar(category: "Sequential", name: "dense"),
                Self.algae.createSwatchBar(category: "Sequential", name: "algae"),
                Self.matter.createSwatchBar(category: "Sequential", name: "matter"),
                Self.turbid.createSwatchBar(category: "Sequential", name: "turbid"),
                Self.speed.createSwatchBar(category: "Sequential", name: "speed"),
                Self.amp.createSwatchBar(category: "Sequential", name: "amp"),
                Self.tempo.createSwatchBar(category: "Sequential", name: "tempo"),
                Self.rain.createSwatchBar(category: "Sequential", name: "rain"),
                Self.phase.createSwatchBar(category: "Sequential", name: "phase"),

                Self.topo.createSwatchBar(category: "Diverging", name: "topo"),
                Self.balance.createSwatchBar(category: "Diverging", name: "balance"),
                Self.delta.createSwatchBar(category: "Diverging", name: "delta"),
                Self.curl.createSwatchBar(category: "Diverging", name: "curl"),
                Self.diff.createSwatchBar(category: "Diverging", name: "diff"),
                Self.tarn.createSwatchBar(category: "Diverging", name: "tarn")
            ]
            return ColorScale.createSwatchBarFigure(title: "Ocean Color Scales Swatch",
                data: swatchBars)
        }
    }

    /// Single/multi-hue sequential and diverging color scales adapted from [ColorBrewer2](http://colorbrewer2.org).
    ///
    /// - Copyright: Licensed under the
    /// [Apache 2.0 license](http://colorbrewer2.org/export/LICENSE.txt).
    public enum Brewer {

        // MARK: Sequential (Multi-Hue)

        /// Sequential multi-hue color scale.
        /// - Note: Original name is `BuGn`.
        public static let blueGreen: ColorScale = [
            0xf7fcfd,
            0xe5f5f9,
            0xccece6,
            0x99d8c9,
            0x66c2a4,
            0x41ae76,
            0x238b45,
            0x006d2c,
            0x00441b
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `BuPu`.
        public static let bluePurple: ColorScale = [
            0xf7fcfd,
            0xe0ecf4,
            0xbfd3e6,
            0x9ebcda,
            0x8c96c6,
            0x8c6bb1,
            0x88419d,
            0x810f7c,
            0x4d004b
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `GnBu`.
        public static let greenBlue: ColorScale = [
            0xf7fcf0,
            0xe0f3db,
            0xccebc5,
            0xa8ddb5,
            0x7bccc4,
            0x4eb3d3,
            0x2b8cbe,
            0x0868ac,
            0x084081
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `OrRd`.
        public static let orangeRed: ColorScale = [
            0xfff7ec,
            0xfee8c8,
            0xfdd49e,
            0xfdbb84,
            0xfc8d59,
            0xef6548,
            0xd7301f,
            0xb30000,
            0x7f0000
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `PuBu`.
        public static let purpleBlue: ColorScale = [
            0xfff7fb,
            0xece7f2,
            0xd0d1e6,
            0xa6bddb,
            0x74a9cf,
            0x3690c0,
            0x0570b0,
            0x045a8d,
            0x023858
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `PuBuGn`.
        public static let purpleBlueGreen: ColorScale = [
            0xfff7fb,
            0xece2f0,
            0xd0d1e6,
            0xa6bddb,
            0x67a9cf,
            0x3690c0,
            0x02818a,
            0x016c59,
            0x014636
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `PuRd`.
        public static let purpleRed: ColorScale = [
            0xf7f4f9,
            0xe7e1ef,
            0xd4b9da,
            0xc994c7,
            0xdf65b0,
            0xe7298a,
            0xce1256,
            0x980043,
            0x67001f
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `RdPu`.
        public static let redPurple: ColorScale = [
            0xfff7f3,
            0xfde0dd,
            0xfcc5c0,
            0xfa9fb5,
            0xf768a1,
            0xdd3497,
            0xae017e,
            0x7a0177,
            0x49006a
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `YlGn`.
        public static let yellowGreen: ColorScale = [
            0xffffe5,
            0xf7fcb9,
            0xd9f0a3,
            0xaddd8e,
            0x78c679,
            0x41ab5d,
            0x238443,
            0x006837,
            0x004529
        ]
        /// Sequential multi-hue colors cale.
        /// - Note: Original name is `YlGnBu`.
        public static let yellowGreenBlue: ColorScale = [
            0xffffd9,
            0xedf8b1,
            0xc7e9b4,
            0x7fcdbb,
            0x41b6c4,
            0x1d91c0,
            0x225ea8,
            0x253494,
            0x081d58
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `YlOrBr`.
        public static let yellowOrangeBrown: ColorScale = [
            0xffffe5,
            0xfff7bc,
            0xfee391,
            0xfec44f,
            0xfe9929,
            0xec7014,
            0xcc4c02,
            0x993404,
            0x662506
        ]
        /// Sequential multi-hue color scale.
        /// - Note: Original name is `YlOrRd`.
        public static let yellowOrangeRed: ColorScale = [
            0xffffcc,
            0xffeda0,
            0xfed976,
            0xfeb24c,
            0xfd8d3c,
            0xfc4e2a,
            0xe31a1c,
            0xbd0026,
            0x800026
        ]

        // MARK: Sequential (Single-Hue)

        /// Sequential single-hue color scale.
        /// - Note: Original name is `Blues`.
        public static let blues: ColorScale = [
            0xf7fbff,
            0xdeebf7,
            0xc6dbef,
            0x9ecae1,
            0x6baed6,
            0x4292c6,
            0x2171b5,
            0x08519c,
            0x08306b
        ]
        /// Sequential single-hue color scale.
        /// - Note: Original name is `Greens`.
        public static let greens: ColorScale = [
            0xf7fcf5,
            0xe5f5e0,
            0xc7e9c0,
            0xa1d99b,
            0x74c476,
            0x41ab5d,
            0x238b45,
            0x006d2c,
            0x00441b
        ]
        /// Sequential single-hue color scale.
        /// - Note: Original name is `Greys`.
        public static let grays: ColorScale = [
            0xffffff,
            0xf0f0f0,
            0xd9d9d9,
            0xbdbdbd,
            0x969696,
            0x737373,
            0x525252,
            0x252525,
            0x000000
        ]
        /// Sequential single-hue color scale.
        /// - Note: Original name is `Oranges`.
        public static let oranges: ColorScale = [
            0xfff5eb,
            0xfee6ce,
            0xfdd0a2,
            0xfdae6b,
            0xfd8d3c,
            0xf16913,
            0xd94801,
            0xa63603,
            0x7f2704
        ]
        /// Sequential single-hue color scale.
        /// - Note: Original name is `Purples`.
        public static let purples: ColorScale = [
            0xfcfbfd,
            0xefedf5,
            0xdadaeb,
            0xbcbddc,
            0x9e9ac8,
            0x807dba,
            0x6a51a3,
            0x54278f,
            0x3f007d
        ]
        /// Sequential single-hue color scale.
        /// - Note: Original name is `Reds`.
        public static let reds: ColorScale = [
            0xfff5f0,
            0xfee0d2,
            0xfcbba1,
            0xfc9272,
            0xfb6a4a,
            0xef3b2c,
            0xcb181d,
            0xa50f15,
            0x67000d
        ]

        // MARK: Diverging

        /// Diverging color scale
        /// - Note: Original name is `BrBG`.
        public static let brownTeal: ColorScale = [
            0x543005,
            0x8c510a,
            0xbf812d,
            0xdfc27d,
            0xf6e8c3,
            0xf5f5f5,
            0xc7eae5,
            0x80cdc1,
            0x35978f,
            0x01665e,
            0x003c30
        ]
        /// Diverging color scale
        /// - Note: Original name is `PiYG`.
        public static let pinkGreen: ColorScale = [
            0x8e0152,
            0xc51b7d,
            0xde77ae,
            0xf1b6da,
            0xfde0ef,
            0xf7f7f7,
            0xe6f5d0,
            0xb8e186,
            0x7fbc41,
            0x4d9221,
            0x276419
        ]
        /// Diverging color scale
        /// - Note: Original name is `PRGn`.
        public static let purpleGreen: ColorScale = [
            0x40004b,
            0x762a83,
            0x9970ab,
            0xc2a5cf,
            0xe7d4e8,
            0xf7f7f7,
            0xd9f0d3,
            0xa6dba0,
            0x5aae61,
            0x1b7837,
            0x00441b
        ]
        /// Diverging color scale
        /// - Note: Original name is `PuOr`.
        public static let purpleOrange: ColorScale = [
            0x7f3b08,
            0xb35806,
            0xe08214,
            0xfdb863,
            0xfee0b6,
            0xf7f7f7,
            0xd8daeb,
            0xb2abd2,
            0x8073ac,
            0x542788,
            0x2d004b
        ]
        /// Diverging color scale
        /// - Note: Original name is `RdBu`.
        public static let redBlue: ColorScale = [
            0x67001f,
            0xb2182b,
            0xd6604d,
            0xf4a582,
            0xfddbc7,
            0xf7f7f7,
            0xd1e5f0,
            0x92c5de,
            0x4393c3,
            0x2166ac,
            0x053061
        ]
        /// Diverging color scale
        /// - Note: Original name is `RdGy`.
        public static let redGray: ColorScale = [
            0x67001f,
            0xb2182b,
            0xd6604d,
            0xf4a582,
            0xfddbc7,
            0xffffff,
            0xe0e0e0,
            0xbababa,
            0x878787,
            0x4d4d4d,
            0x1a1a1a
        ]
        /// Diverging color scale
        /// - Note: Original name is `RdYlBu`.
        public static let redYellowBlue: ColorScale = [
            0xa50026,
            0xd73027,
            0xf46d43,
            0xfdae61,
            0xfee090,
            0xffffbf,
            0xe0f3f8,
            0xabd9e9,
            0x74add1,
            0x4575b4,
            0x313695
        ]
        /// Diverging color scale
        /// - Note: Original name is `RdYlGn`.
        public static let redYellowGreen: ColorScale = [
            0xa50026,
            0xd73027,
            0xf46d43,
            0xfdae61,
            0xfee08b,
            0xffffbf,
            0xd9ef8b,
            0xa6d96a,
            0x66bd63,
            0x1a9850,
            0x006837

        ]
        /// Diverging color scale
        /// - Note: Original name is `Spectral`.
        public static let spectral: ColorScale = [
            0x9e0142,
            0xd53e4f,
            0xf46d43,
            0xfdae61,
            0xfee08b,
            0xffffbf,
            0xe6f598,
            0xabdda4,
            0x66c2a5,
            0x3288bd,
            0x5e4fa2
        ]

        /// Creates a figure that shows all _Brewer_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchBars = [
                Self.blueGreen.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "blueGreen"),
                Self.bluePurple.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "bluePurple"),
                Self.greenBlue.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "greenBlue"),
                Self.orangeRed.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "orangeRed"),
                Self.purpleBlue.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "purpleBlue"),
                Self.purpleBlueGreen.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "purpleBlueGreen"),
                Self.purpleRed.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "purpleRed"),
                Self.redPurple.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "redPurple"),
                Self.yellowGreen.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "yellowGreen"),
                Self.yellowGreenBlue.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "yellowGreenBlue"),
                Self.yellowOrangeBrown.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "yellowOrangeBrown"),
                Self.yellowOrangeRed.createSwatchBar(category: "Sequential<br>(Multi Hue)", name: "yellowOrangeRed"),

                Self.blues.createSwatchBar(category: "Sequential<br>(Single-Hue)", name: "blues"),
                Self.greens.createSwatchBar(category: "Sequential<br>(Single-Hue)", name: "greens"),
                Self.grays.createSwatchBar(category: "Sequential<br>(Single-Hue)", name: "grays"),
                Self.oranges.createSwatchBar(category: "Sequential<br>(Single-Hue)", name: "oranges"),
                Self.purples.createSwatchBar(category: "Sequential<br>(Single-Hue)", name: "purples"),
                Self.reds.createSwatchBar(category: "Sequential<br>(Single-Hue)", name: "reds"),

                Self.brownTeal.createSwatchBar(category: "Diverging", name: "brownTeal"),
                Self.pinkGreen.createSwatchBar(category: "Diverging", name: "pinkGreen"),
                Self.purpleGreen.createSwatchBar(category: "Diverging", name: "purpleGreen"),
                Self.purpleOrange.createSwatchBar(category: "Diverging", name: "purpleOrange"),
                Self.redBlue.createSwatchBar(category: "Diverging", name: "redBlue"),
                Self.redGray.createSwatchBar(category: "Diverging", name: "redGray"),
                Self.redYellowBlue.createSwatchBar(category: "Diverging", name: "redYellowBlue"),
                Self.redYellowGreen.createSwatchBar(category: "Diverging", name: "redYellowGreen"),
                Self.spectral.createSwatchBar(category: "Diverging", name: "spectral")
            ]
            return ColorScale.createSwatchBarFigure(title: "Brewer Color Scales Swatch",
                data: swatchBars)
        }
    }

    /// Sequential and diverging color scales adapted from [CartoCOLORS](https://carto.com/carto-colors/).
    ///
    /// - Copyright: Licensed under the
    /// [Creative Commons - Attribution license](https://github.com/CartoDB/CartoColor/blob/master/README.md).
    public enum Carto {

        // MARK: Sequential

        /// Sequential color scale.
        /// - Note: Original name is `Burg`.
        public static let burgundy: ColorScale = [
            .RGB(255, 198, 196),
            .RGB(244, 163, 168),
            .RGB(227, 129, 145),
            .RGB(204, 96, 125),
            .RGB(173, 70, 108),
            .RGB(139, 48, 88),
            .RGB(103, 32, 68)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `BurgYl`.
        public static let yellowBurgundy: ColorScale = [
            .RGB(251, 230, 197),
            .RGB(245, 186, 152),
            .RGB(238, 138, 130),
            .RGB(220, 113, 118),
            .RGB(200, 88, 108),
            .RGB(156, 63, 93),
            .RGB(112, 40, 74)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `RedOr`.
        public static let orangeRed: ColorScale = [
            .RGB(246, 210, 169),
            .RGB(245, 183, 142),
            .RGB(241, 156, 124),
            .RGB(234, 129, 113),
            .RGB(221, 104, 108),
            .RGB(202, 82, 104),
            .RGB(177, 63, 100)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `OrYel`.
        public static let yellowOrange: ColorScale = [
            .RGB(236, 218, 154),
            .RGB(239, 196, 126),
            .RGB(243, 173, 106),
            .RGB(247, 148, 93),
            .RGB(249, 123, 87),
            .RGB(246, 99, 86),
            .RGB(238, 77, 90)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Peach`.
        public static let peach: ColorScale = [
            .RGB(253, 224, 197),
            .RGB(250, 203, 166),
            .RGB(248, 181, 139),
            .RGB(245, 158, 114),
            .RGB(242, 133, 93),
            .RGB(239, 106, 76),
            .RGB(235, 74, 64)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `PinkYl`.
        public static let yellowPink: ColorScale = [
            .RGB(254, 246, 181),
            .RGB(255, 221, 154),
            .RGB(255, 194, 133),
            .RGB(255, 166, 121),
            .RGB(250, 138, 118),
            .RGB(241, 109, 122),
            .RGB(225, 83, 131)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Mint`.
        public static let mint: ColorScale = [
            .RGB(228, 241, 225),
            .RGB(180, 217, 204),
            .RGB(137, 192, 182),
            .RGB(99, 166, 160),
            .RGB(68, 140, 138),
            .RGB(40, 114, 116),
            .RGB(13, 88, 95)
        ]
        /// - Note: Original name is `BluGrn`.
        public static let greenBlue: ColorScale = [
            .RGB(196, 230, 195),
            .RGB(150, 210, 164),
            .RGB(109, 188, 144),
            .RGB(77, 162, 132),
            .RGB(54, 135, 122),
            .RGB(38, 107, 110),
            .RGB(29, 79, 96)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `DarkMint`.
        public static let darkMint: ColorScale = [
            .RGB(210, 251, 212),
            .RGB(165, 219, 194),
            .RGB(123, 188, 176),
            .RGB(85, 156, 158),
            .RGB(58, 124, 137),
            .RGB(35, 93, 114),
            .RGB(18, 63, 90)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Emrld`.
        public static let emerald: ColorScale = [
            .RGB(211, 242, 163),
            .RGB(151, 225, 150),
            .RGB(108, 192, 139),
            .RGB(76, 155, 130),
            .RGB(33, 122, 121),
            .RGB(16, 89, 101),
            .RGB(7, 64, 80)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `BluYl`.
        public static let yellowBlue: ColorScale = [
            .RGB(247, 254, 174),
            .RGB(183, 230, 165),
            .RGB(124, 203, 162),
            .RGB(70, 174, 160),
            .RGB(8, 144, 153),
            .RGB(0, 113, 139),
            .RGB(4, 82, 117)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Teal`.
        public static let teal: ColorScale = [
            .RGB(209, 238, 234),
            .RGB(168, 219, 217),
            .RGB(133, 196, 201),
            .RGB(104, 171, 184),
            .RGB(79, 144, 166),
            .RGB(59, 115, 143),
            .RGB(42, 86, 116)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `TealGrn`.
        public static let greenTeal: ColorScale = [
            .RGB(176, 242, 188),
            .RGB(137, 232, 172),
            .RGB(103, 219, 165),
            .RGB(76, 200, 163),
            .RGB(56, 178, 163),
            .RGB(44, 152, 160),
            .RGB(37, 125, 152)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Purp`.
        public static let purple: ColorScale = [
            .RGB(243, 224, 247),
            .RGB(228, 199, 241),
            .RGB(209, 175, 232),
            .RGB(185, 152, 221),
            .RGB(159, 130, 206),
            .RGB(130, 109, 186),
            .RGB(99, 88, 159)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `PurpOr`.
        public static let orangePurple: ColorScale = [
            .RGB(249, 221, 218),
            .RGB(242, 185, 196),
            .RGB(229, 151, 185),
            .RGB(206, 120, 179),
            .RGB(173, 95, 173),
            .RGB(131, 75, 160),
            .RGB(87, 59, 136)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Sunset`.
        public static let sunset: ColorScale = [
            .RGB(243, 231, 155),
            .RGB(250, 196, 132),
            .RGB(248, 160, 126),
            .RGB(235, 127, 134),
            .RGB(206, 102, 147),
            .RGB(160, 89, 160),
            .RGB(92, 83, 165)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Magenta`.
        public static let magenta: ColorScale = [
            .RGB(243, 203, 211),
            .RGB(234, 169, 189),
            .RGB(221, 136, 172),
            .RGB(202, 105, 157),
            .RGB(177, 77, 142),
            .RGB(145, 53, 125),
            .RGB(108, 33, 103)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `SunsetDark`.
        public static let sunsetDark: ColorScale = [
            .RGB(252, 222, 156),
            .RGB(250, 164, 118),
            .RGB(240, 116, 110),
            .RGB(227, 79, 111),
            .RGB(220, 57, 119),
            .RGB(185, 37, 122),
            .RGB(124, 29, 111)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `BrwnYl`.
        public static let yellowBrown: ColorScale = [
            .RGB(237, 229, 207),
            .RGB(224, 194, 162),
            .RGB(211, 156, 131),
            .RGB(193, 118, 111),
            .RGB(166, 84, 97),
            .RGB(129, 55, 83),
            .RGB(84, 31, 63)
        ]

        // MARK: Diverging

        /// Diverging color scale.
        /// - Note: Original name is `ArmyRose`.
        public static let armyRose: ColorScale = [
            .RGB(121, 130, 52),
            .RGB(163, 173, 98),
            .RGB(208, 211, 162),
            .RGB(253, 251, 228),
            .RGB(240, 198, 195),
            .RGB(223, 145, 163),
            .RGB(212, 103, 128)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Fall`.
        public static let fall: ColorScale = [
            .RGB(61, 89, 65),
            .RGB(119, 136, 104),
            .RGB(181, 185, 145),
            .RGB(246, 237, 189),
            .RGB(237, 187, 138),
            .RGB(222, 138, 90),
            .RGB(202, 86, 44)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Geyser`.
        public static let geyser: ColorScale = [
            .RGB(0, 128, 128),
            .RGB(112, 164, 148),
            .RGB(180, 200, 168),
            .RGB(246, 237, 189),
            .RGB(237, 187, 138),
            .RGB(222, 138, 90),
            .RGB(202, 86, 44)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Temps`.
        public static let temps: ColorScale = [
            .RGB(0, 147, 146),
            .RGB(57, 177, 133),
            .RGB(156, 203, 134),
            .RGB(233, 226, 156),
            .RGB(238, 180, 121),
            .RGB(232, 132, 113),
            .RGB(207, 89, 126)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `TealRose`.
        public static let tealRose: ColorScale = [
            .RGB(0, 147, 146),
            .RGB(114, 170, 161),
            .RGB(177, 199, 179),
            .RGB(241, 234, 200),
            .RGB(229, 185, 173),
            .RGB(217, 137, 148),
            .RGB(208, 88, 126)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Tropic`.
        public static let tropic: ColorScale = [
            .RGB(0, 155, 158),
            .RGB(66, 183, 185),
            .RGB(167, 211, 212),
            .RGB(241, 241, 241),
            .RGB(228, 193, 217),
            .RGB(214, 145, 193),
            .RGB(199, 93, 171)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Earth`.
        public static let earth: ColorScale = [
            .RGB(161, 105, 40),
            .RGB(189, 146, 90),
            .RGB(214, 189, 141),
            .RGB(237, 234, 194),
            .RGB(181, 200, 184),
            .RGB(121, 167, 172),
            .RGB(40, 135, 161)
        ]

        /// Creates a figure that shows all _Carto_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchBars = [
                Self.burgundy.createSwatchBar(category: "Sequential", name: "burgundy"),
                Self.yellowBurgundy.createSwatchBar(category: "Sequential", name: "yellowBurgundy"),
                Self.orangeRed.createSwatchBar(category: "Sequential", name: "orangeRed"),
                Self.yellowOrange.createSwatchBar(category: "Sequential", name: "yellowOrange"),
                Self.peach.createSwatchBar(category: "Sequential", name: "peach"),
                Self.yellowPink.createSwatchBar(category: "Sequential", name: "yellowPink"),
                Self.mint.createSwatchBar(category: "Sequential", name: "mint"),
                Self.greenBlue.createSwatchBar(category: "Sequential", name: "greenBlue"),
                Self.darkMint.createSwatchBar(category: "Sequential", name: "darkMint"),
                Self.emerald.createSwatchBar(category: "Sequential", name: "emerald"),
                Self.yellowBlue.createSwatchBar(category: "Sequential", name: "yellowBlue"),
                Self.teal.createSwatchBar(category: "Sequential", name: "teal"),
                Self.greenTeal.createSwatchBar(category: "Sequential", name: "greenTeal"),
                Self.purple.createSwatchBar(category: "Sequential", name: "purple"),
                Self.orangePurple.createSwatchBar(category: "Sequential", name: "orangePurple"),
                Self.sunset.createSwatchBar(category: "Sequential", name: "sunset"),
                Self.magenta.createSwatchBar(category: "Sequential", name: "magenta"),
                Self.sunsetDark.createSwatchBar(category: "Sequential", name: "sunsetDark"),
                Self.yellowBrown.createSwatchBar(category: "Sequential", name: "yellowBrown"),

                Self.armyRose.createSwatchBar(category: "Diverging", name: "armyRose"),
                Self.fall.createSwatchBar(category: "Diverging", name: "fall"),
                Self.geyser.createSwatchBar(category: "Diverging", name: "geyser"),
                Self.temps.createSwatchBar(category: "Diverging", name: "temps"),
                Self.tealRose.createSwatchBar(category: "Diverging", name: "tealRose"),
                Self.tropic.createSwatchBar(category: "Diverging", name: "tropic"),
                Self.earth.createSwatchBar(category: "Diverging", name: "earth")
            ]
            return ColorScale.createSwatchBarFigure(title: "Carto Color Scales Swatch",
                data: swatchBars)
        }
    }

    /// Color scales imported from [Plotly.js](https://github.com/plotly/plotly.js) and
    /// [Plotly.py](https://github.com/plotly/plotly.py).
    ///
    /// - Copyright: Licensed under the
    /// [MIT license](https://github.com/plotly/plotly.js/blob/master/LICENSE).
    public enum Plotly {

        // MARK: JavaScript

        /// Sequential color scale.
        /// - Note: Original name is `Greys`.
        public static let grays: ColorScale = [
            .RGB(0, 0, 0),
            .RGB(255, 255, 255)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `YlGnBu`.
        public static let blueGreenYellow: ColorScale = [
            .RGB(8, 29, 88),
            .RGB(37, 52, 148),
            .RGB(34, 94, 168),
            .RGB(29, 145, 192),
            .RGB(65, 182, 196),
            .RGB(127, 205, 187),
            .RGB(199, 233, 180),
            .RGB(237, 248, 217),
            .RGB(255, 255, 217)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Greens`.
        public static let greens: ColorScale = [
            .RGB(0, 68, 27),
            .RGB(0, 109, 44),
            .RGB(35, 139, 69),
            .RGB(65, 171, 93),
            .RGB(116, 196, 118),
            .RGB(161, 217, 155),
            .RGB(199, 233, 192),
            .RGB(229, 245, 224),
            .RGB(247, 252, 245)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `YlOrRd`.
        public static let redOrangeYellow: ColorScale = [
            .RGB(128, 0, 38),
            .RGB(189, 0, 38),
            .RGB(227, 26, 28),
            .RGB(252, 78, 42),
            .RGB(253, 141, 60),
            .RGB(254, 178, 76),
            .RGB(254, 217, 118),
            .RGB(255, 237, 160),
            .RGB(255, 255, 204)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Bluered`.
        public static let blueRed: ColorScale = [
            .RGB(0, 0, 255),
            .RGB(255, 0, 0)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `RdBu`.
        public static let redBlue: ColorScale = [
            0.0: .RGB(5, 10, 172),
            0.35: .RGB(106, 137, 247),
            0.5: .RGB(190, 190, 190),
            0.6: .RGB(220, 170, 132),
            0.7: .RGB(230, 145, 90),
            1.0: .RGB(178, 10, 28)
        ]
        /// Sequential color scale for non-negative numeric values.
        /// - Note: Original name is `Reds`.
        public static let reds: ColorScale = [
            0.0: .RGB(220, 220, 220),
            0.2: .RGB(245, 195, 157),
            0.4: .RGB(245, 160, 105),
            1.0: .RGB(178, 10, 28)
        ]
        /// Sequential color scale for non-positive numeric values.
        /// - Note: Original name is `Blues`.
        public static let blues: ColorScale = [
            0.0: .RGB(5, 10, 172),
            0.35: .RGB(40, 60, 190),
            0.5: .RGB(70, 100, 245),
            0.6: .RGB(90, 120, 245),
            0.7: .RGB(106, 137, 247),
            1.0: .RGB(220, 220, 220)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Picnic`.
        public static let picnic: ColorScale = [
            .RGB(0, 0, 255),
            .RGB(51, 153, 255),
            .RGB(102, 204, 255),
            .RGB(153, 204, 255),
            .RGB(204, 204, 255),
            .RGB(255, 255, 255),
            .RGB(255, 204, 255),
            .RGB(255, 153, 255),
            .RGB(255, 102, 204),
            .RGB(255, 102, 102),
            .RGB(255, 0, 0)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Rainbow`.
        public static let rainbow: ColorScale = [
            .RGB(150, 0, 90),
            .RGB(0, 0, 200),
            .RGB(0, 25, 255),
            .RGB(0, 152, 255),
            .RGB(44, 255, 150),
            .RGB(151, 255, 0),
            .RGB(255, 234, 0),
            .RGB(255, 111, 0),
            .RGB(255, 0, 0)
        ]
        /// Diverging color scale.
        /// - Note: Original name is `Portland`.
        public static let portland: ColorScale = [
            .RGB(12, 51, 131),
            .RGB(10, 136, 186),
            .RGB(242, 211, 56),
            .RGB(242, 143, 56),
            .RGB(217, 30, 30)
        ]
        /// Sequential color scale similar to Matlab 2014.
        /// - Note: Original name is `Jet`.
        public static let jet: ColorScale = [
            0.000: .RGB(0, 0, 131),
            0.125: .RGB(0, 60, 170),
            0.375: .RGB(5, 255, 255),
            0.625: .RGB(255, 255, 0),
            0.875: .RGB(250, 0, 0),
            1.000: .RGB(128, 0, 0)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Hot`.
        public static let hot: ColorScale = [
            0.0: .RGB(0, 0, 0),
            0.3: .RGB(230, 0, 0),
            0.6: .RGB(255, 210, 0),
            1.0: .RGB(255, 255, 255)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Blackbody`.
        public static let blackBody: ColorScale = [
            0.0: .RGB(0, 0, 0),
            0.2: .RGB(230, 0, 0),
            0.4: .RGB(230, 210, 0),
            0.7: .RGB(255, 255, 255),
            1.0: .RGB(160, 200, 255)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Earth`.
        public static let earth: ColorScale = [
            0.0: .RGB(0, 0, 130),
            0.1: .RGB(0, 180, 180),
            0.2: .RGB(40, 210, 40),
            0.4: .RGB(230, 230, 50),
            0.6: .RGB(120, 70, 20),
            1.0: .RGB(255, 255, 255)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Electric`.
        public static let electric: ColorScale = [
            0.0: .RGB(0, 0, 0),
            0.15: .RGB(30, 0, 100),
            0.4: .RGB(120, 0, 100),
            0.6: .RGB(160, 90, 0),
            0.8: .RGB(230, 200, 0),
            1.0: .RGB(255, 250, 220)
        ]
        /// Sequential color scale originating from Matplotlib.
        /// - Note: Original name is `Viridis`.
        public static let viridis: ColorScale = [
            0.000000: .RGB(68, 1, 84),
            0.062745: .RGB(72, 24, 106),
            0.125490: .RGB(71, 45, 123),
            0.188235: .RGB(66, 64, 134),
            0.250980: .RGB(59, 82, 139),
            0.313725: .RGB(51, 99, 141),
            0.376470: .RGB(44, 114, 142),
            0.439215: .RGB(38, 130, 142),
            0.501960: .RGB(33, 145, 140),
            0.564705: .RGB(31, 160, 136),
            0.627450: .RGB(40, 174, 128),
            0.690196: .RGB(63, 188, 115),
            0.752941: .RGB(94, 201, 98),
            0.815686: .RGB(132, 212, 75),
            0.878431: .RGB(173, 220, 48),
            0.941176: .RGB(216, 226, 25),
            1.000000: .RGB(253, 231, 37)
        ]
        /// Sequential color scale.
        /// - Note: Original name is `Cividis`.
        public static let cividis: ColorScale = [
            0.000000: .RGB(0, 32, 76),
            0.058824: .RGB(0, 42, 102),
            0.117647: .RGB(0, 52, 110),
            0.176471: .RGB(39, 63, 108),
            0.235294: .RGB(60, 74, 107),
            0.294118: .RGB(76, 85, 107),
            0.352941: .RGB(91, 95, 109),
            0.411765: .RGB(104, 106, 112),
            0.470588: .RGB(117, 117, 117),
            0.529412: .RGB(131, 129, 120),
            0.588235: .RGB(146, 140, 120),
            0.647059: .RGB(161, 152, 118),
            0.705882: .RGB(176, 165, 114),
            0.764706: .RGB(192, 177, 109),
            0.823529: .RGB(209, 191, 102),
            0.882353: .RGB(225, 204, 92),
            0.941176: .RGB(243, 219, 79),
            1.000000: .RGB(255, 233, 69)
        ]

        // MARK: Python

        /// Default sequential color scale for figures created with Plotly 3.x.
        /// - Note: Original name is `Plotly3`.
        public static let plotly3: ColorScale = [
            0x0508b8,
            0x1910d8,
            0x3c19f0,
            0x6b1cfb,
            0x981cfd,
            0xbf1cfd,
            0xdd2bfd,
            0xf246fe,
            0xfc67fd,
            0xfe88fc,
            0xfea5fd,
            0xfebefe,
            0xfec3fe
        ]
        /// Sequential color scale originating from Matplotlib.
        /// - Note: Original name is `Inferno`.
        public static let inferno: ColorScale = [
            0x000004,
            0x1b0c41,
            0x4a0c6b,
            0x781c6d,
            0xa52c60,
            0xcf4446,
            0xed6925,
            0xfb9b06,
            0xf7d13d,
            0xfcffa4
        ]
        /// Sequential color scale originating from Matplotlib.
        /// - Note: Original name is `Magma`.
        public static let magma: ColorScale = [
            0x000004,
            0x180f3d,
            0x440f76,
            0x721f81,
            0x9e2f7f,
            0xcd4071,
            0xf1605d,
            0xfd9668,
            0xfeca8d,
            0xfcfdbf
        ]
        /// Sequential color scale originating from Matplotlib.
        /// - Note: Original name is `Plasma`.
        public static let plasma: ColorScale = [
            0x0d0887,
            0x46039f,
            0x7201a8,
            0x9c179e,
            0xbd3786,
            0xd8576b,
            0xed7953,
            0xfb9f3a,
            0xfdca26,
            0xf0f921
        ]
        /// Cyclical color scale.
        public static let twilight: ColorScale = [
            0xe2d9e2,
            0x9ebbc9,
            0x6785be,
            0x5e43a5,
            0x421257,
            0x471340,
            0x8e2c50,
            0xba6657,
            0xceac94,
            0xe2d9e2
        ]
        /// Cyclical color scale.
        public static let iceFire: ColorScale = [
            0x000000,
            0x001f4d,
            0x003786,
            0x0e58a8,
            0x217eb8,
            0x30a4ca,
            0x54c8df,
            0x9be4ef,
            0xe1e9d1,
            0xf3d573,
            0xe7b000,
            0xda8200,
            0xc65400,
            0xac2301,
            0x820000,
            0x4c0000,
            0x000000
        ]
        /// Cyclical color scale.
        public static let edge: ColorScale = [
            0x313131,
            0x3d019d,
            0x3810dc,
            0x2d47f9,
            0x2593ff,
            0x2adef6,
            0x60fdfa,
            0xaefdff,
            0xf3f3f1,
            0xfffda9,
            0xfafd5b,
            0xf7da29,
            0xff8e25,
            0xf8432d,
            0xd90d39,
            0x97023d,
            0x313131
        ]
        /// Cyclical color scale.
        public static let hsv: ColorScale = [
            0xff0000,
            0xffa700,
            0xafff00,
            0x08ff00,
            0x00ff9f,
            0x00b7ff,
            0x0010ff,
            0x9700ff,
            0xff00bf,
            0xff0000
        ]
        /// Cyclical color scale.
        public static let magentaRedYellowBlue: ColorScale = [
            0xf884f7,
            0xf968c4,
            0xea4388,
            0xcf244b,
            0xb51a15,
            0xbd4304,
            0xcc6904,
            0xd58f04,
            0xcfaa27,
            0xa19f62,
            0x588a93,
            0x2269c4,
            0x3e3ef0,
            0x6b4ef9,
            0x956bfa,
            0xcd7dfe,
            0xf884f7
        ]
        /// Cyclical color scale.
        public static let magentaYellowGreenBlue: ColorScale = [
            0xef55f1,
            0xfb84ce,
            0xfbafa1,
            0xfcd471,
            0xf0ed35,
            0xc6e516,
            0x96d310,
            0x61c10b,
            0x31ac28,
            0x439064,
            0x3d719a,
            0x284ec8,
            0x2e21ea,
            0x6324f5,
            0x9139fa,
            0xc543fa,
            0xef55f1
        ]

        /// Creates a figure that shows all _Plotly_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchBars = [
                Self.grays.createSwatchBar(category: "JavaScript", name: "grays"),
                Self.blueGreenYellow.createSwatchBar(category: "JavaScript", name: "blueGreenYellow"),
                Self.greens.createSwatchBar(category: "JavaScript", name: "greens"),
                Self.redOrangeYellow.createSwatchBar(category: "JavaScript", name: "redOrangeYellow"),
                Self.blueRed.createSwatchBar(category: "JavaScript", name: "blueRed"),
                Self.redBlue.createSwatchBar(category: "JavaScript", name: "redBlue"),
                Self.reds.createSwatchBar(category: "JavaScript", name: "reds"),
                Self.blues.createSwatchBar(category: "JavaScript", name: "blues"),
                Self.picnic.createSwatchBar(category: "JavaScript", name: "picnic"),
                Self.rainbow.createSwatchBar(category: "JavaScript", name: "rainbow"),
                Self.portland.createSwatchBar(category: "JavaScript", name: "portland"),
                Self.jet.createSwatchBar(category: "JavaScript", name: "jet"),
                Self.hot.createSwatchBar(category: "JavaScript", name: "hot"),
                Self.blackBody.createSwatchBar(category: "JavaScript", name: "blackBody"),
                Self.earth.createSwatchBar(category: "JavaScript", name: "earth"),
                Self.electric.createSwatchBar(category: "JavaScript", name: "electric"),
                Self.viridis.createSwatchBar(category: "JavaScript", name: "viridis"),
                Self.cividis.createSwatchBar(category: "JavaScript", name: "cividis"),

                Self.plotly3.createSwatchBar(category: "Python", name: "plotly3"),
                Self.inferno.createSwatchBar(category: "Python", name: "inferno"),
                Self.magma.createSwatchBar(category: "Python", name: "magma"),
                Self.plasma.createSwatchBar(category: "Python", name: "plasma"),
                Self.iceFire.createSwatchBar(category: "Python", name: "iceFire"),
                Self.edge.createSwatchBar(category: "Python", name: "edge"),
                Self.hsv.createSwatchBar(category: "Python", name: "hsv"),
                Self.magentaRedYellowBlue.createSwatchBar(category: "Python", name: "magentaRedYellowBlue"),
                Self.magentaYellowGreenBlue.createSwatchBar(category: "Python", name: "magentaYellowGreenBlue")
            ]
            return ColorScale.createSwatchBarFigure(title: "Plotly Color Scales Swatch",
                data: swatchBars)
        }
    }

    /// Collection of sequential color scales for continuous data.
    ///
    /// Sequential color scales are appropriate for nearly all continuous data. In some special case it
    /// can be helpful to use a `Diverging` or `Cyclical` scale instead.
    ///
    /// - Copyright:
    /// Adapted from [Plotly.py](https://github.com/plotly/plotly.py), licensed under the
    /// [MIT license](https://github.com/plotly/plotly.py/blob/master/LICENSE.txt).
    public enum Sequential {

        // MARK: Ocean
        /// Sequential _Ocean_ color scale.
        public static let thermal = Ocean.thermal
        /// Sequential _Ocean_ color scale.
        public static let haline = Ocean.haline
        /// Sequential _Ocean_ color scale.
        public static let solar = Ocean.solar
        /// Sequential _Ocean_ color scale.
        public static let ice = Ocean.ice
        /// Sequential _Ocean_ color scale.
        public static let gray = Ocean.gray
        /// Sequential _Ocean_ color scale.
        public static let deep = Ocean.deep
        /// Sequential _Ocean_ color scale.
        public static let dense = Ocean.dense
        /// Sequential _Ocean_ color scale.
        public static let algae = Ocean.algae
        /// Sequential _Ocean_ color scale.
        public static let matter = Ocean.matter
        /// Sequential _Ocean_ color scale.
        public static let turbid = Ocean.turbid
        /// Sequential _Ocean_ color scale.
        public static let speed = Ocean.speed
        /// Sequential _Ocean_ color scale.
        public static let amp = Ocean.amp
        /// Sequential _Ocean_ color scale.
        public static let tempo = Ocean.tempo
        /// Sequential _Ocean_ color scale.
        public static let rain = Ocean.rain

        // MARK: Brewer
        /// Sequential _Brewer_ color scale.
        public static let blueGreen = Brewer.blueGreen
        /// Sequential _Brewer_ color scale.
        public static let bluePurple = Brewer.bluePurple
        /// Sequential _Brewer_ color scale.
        public static let greenBlue = Brewer.greenBlue
        /// Sequential _Brewer_ color scale.
        public static let orangeRed = Brewer.orangeRed
        /// Sequential _Brewer_ color scale.
        public static let purpleBlue = Brewer.purpleBlue
        /// Sequential _Brewer_ color scale.
        public static let purpleBlueGreen = Brewer.purpleBlueGreen
        /// Sequential _Brewer_ color scale.
        public static let purpleRed = Brewer.purpleRed
        /// Sequential _Brewer_ color scale.
        public static let redPurple = Brewer.redPurple
        /// Sequential _Brewer_ color scale.
        public static let yellowGreen = Brewer.yellowGreen
        /// Sequential _Brewer_ color scale.
        public static let yellowGreenBlue = Brewer.yellowGreenBlue
        /// Sequential _Brewer_ color scale.
        public static let yellowOrangeBrown = Brewer.yellowOrangeBrown
        /// Sequential _Brewer_ color scale.
        public static let yellowOrangeRed = Brewer.yellowOrangeRed
        /// Sequential _Brewer_ color scale.
        public static let blues = Brewer.blues
        /// Sequential _Brewer_ color scale.
        public static let greens = Brewer.greens
        /// Sequential _Brewer_ color scale.
        public static let grays = Brewer.grays
        /// Sequential _Brewer_ color scale.
        public static let oranges = Brewer.oranges
        /// Sequential _Brewer_ color scale.
        public static let purples = Brewer.purples
        /// Sequential _Brewer_ color scale.
        public static let reds = Brewer.reds

        // MARK: Carto
        /// Sequential _Carto_ color scale.
        public static let burgundy = Carto.burgundy
        /// Sequential _Carto_ color scale.
        public static let yellowBurgundy = Carto.yellowBurgundy
        /// Sequential _Carto_ color scale.
        public static let yellowOrange = Carto.yellowOrange
        /// Sequential _Carto_ color scale.
        public static let peach = Carto.peach
        /// Sequential _Carto_ color scale.
        public static let yellowPink = Carto.yellowPink
        /// Sequential _Carto_ color scale.
        public static let mint = Carto.mint
        /// Sequential _Carto_ color scale.
        public static let darkMint = Carto.darkMint
        /// Sequential _Carto_ color scale.
        public static let emerald = Carto.emerald
        /// Sequential _Carto_ color scale.
        public static let yellowBlue = Carto.yellowBlue
        /// Sequential _Carto_ color scale.
        public static let teal = Carto.teal
        /// Sequential _Carto_ color scale.
        public static let greenTeal = Carto.greenTeal
        /// Sequential _Carto_ color scale.
        public static let purple = Carto.purple
        /// Sequential _Carto_ color scale.
        public static let orangePurple = Carto.orangePurple
        /// Sequential _Carto_ color scale.
        public static let sunset = Carto.sunset
        /// Sequential _Carto_ color scale.
        public static let magenta = Carto.magenta
        /// Sequential _Carto_ color scale.
        public static let sunsetDark = Carto.sunsetDark
        /// Sequential _Carto_ color scale.
        public static let yellowBrown = Carto.yellowBrown

        // MARK: Plotly
        /// Sequential _Plotly_ color scale.
        public static let rainbow = Plotly.rainbow
        /// Sequential _Plotly_ color scale.
        public static let jet = Plotly.jet
        /// Sequential _Plotly_ color scale.
        public static let hot = Plotly.hot
        /// Sequential _Plotly_ color scale.
        public static let blackBody = Plotly.blackBody
        /// Sequential _Plotly_ color scale.
        public static let earth = Plotly.earth
        /// Sequential _Plotly_ color scale.
        public static let electric = Plotly.electric
        /// Sequential _Plotly_ color scale.
        public static let viridis = Plotly.viridis
        /// Sequential _Plotly_ color scale.
        public static let cividis = Plotly.cividis
        /// Sequential _Plotly_ color scale.
        public static let plotly3 = Plotly.plotly3
        /// Sequential _Plotly_ color scale.
        public static let inferno = Plotly.inferno
        /// Sequential _Plotly_ color scale.
        public static let magma = Plotly.magma
        /// Sequential _Plotly_ color scale.
        public static let plasma = Plotly.plasma

        /// Creates a figure that shows all _Sequential_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchBars = [
                Self.thermal.createSwatchBar(category: "Ocean", name: "thermal"),
                Self.haline.createSwatchBar(category: "Ocean", name: "haline"),
                Self.solar.createSwatchBar(category: "Ocean", name: "solar"),
                Self.ice.createSwatchBar(category: "Ocean", name: "ice"),
                Self.gray.createSwatchBar(category: "Ocean", name: "gray"),
                Self.deep.createSwatchBar(category: "Ocean", name: "deep"),
                Self.dense.createSwatchBar(category: "Ocean", name: "dense"),
                Self.algae.createSwatchBar(category: "Ocean", name: "algae"),
                Self.matter.createSwatchBar(category: "Ocean", name: "matter"),
                Self.turbid.createSwatchBar(category: "Ocean", name: "turbid"),
                Self.speed.createSwatchBar(category: "Ocean", name: "speed"),
                Self.amp.createSwatchBar(category: "Ocean", name: "amp"),
                Self.tempo.createSwatchBar(category: "Ocean", name: "tempo"),
                Self.rain.createSwatchBar(category: "Ocean", name: "rain"),

                Self.blueGreen.createSwatchBar(category: "Brewer", name: "blueGreen"),
                Self.bluePurple.createSwatchBar(category: "Brewer", name: "bluePurple"),
                Self.greenBlue.createSwatchBar(category: "Brewer", name: "greenBlue"),
                Self.orangeRed.createSwatchBar(category: "Brewer", name: "orangeRed"),
                Self.purpleBlue.createSwatchBar(category: "Brewer", name: "purpleBlue"),
                Self.purpleBlueGreen.createSwatchBar(category: "Brewer", name: "purpleBlueGreen"),
                Self.purpleRed.createSwatchBar(category: "Brewer", name: "purpleRed"),
                Self.redPurple.createSwatchBar(category: "Brewer", name: "redPurple"),
                Self.yellowGreen.createSwatchBar(category: "Brewer", name: "yellowGreen"),
                Self.yellowGreenBlue.createSwatchBar(category: "Brewer", name: "yellowGreenBlue"),
                Self.yellowOrangeBrown.createSwatchBar(category: "Brewer", name: "yellowOrangeBrown"),
                Self.yellowOrangeRed.createSwatchBar(category: "Brewer", name: "yellowOrangeRed"),
                Self.blues.createSwatchBar(category: "Brewer", name: "blues"),
                Self.greens.createSwatchBar(category: "Brewer", name: "greens"),
                Self.grays.createSwatchBar(category: "Brewer", name: "grays"),
                Self.oranges.createSwatchBar(category: "Brewer", name: "oranges"),
                Self.purples.createSwatchBar(category: "Brewer", name: "purples"),
                Self.reds.createSwatchBar(category: "Brewer", name: "reds"),

                Self.burgundy.createSwatchBar(category: "Brewer", name: "burgundy"),
                Self.yellowBurgundy.createSwatchBar(category: "Brewer", name: "yellowBurgundy"),
                Self.yellowOrange.createSwatchBar(category: "Brewer", name: "yellowOrange"),
                Self.peach.createSwatchBar(category: "Brewer", name: "peach"),
                Self.yellowPink.createSwatchBar(category: "Brewer", name: "yellowPink"),
                Self.mint.createSwatchBar(category: "Brewer", name: "mint"),
                Self.darkMint.createSwatchBar(category: "Brewer", name: "darkMint"),
                Self.emerald.createSwatchBar(category: "Brewer", name: "emerald"),
                Self.yellowBlue.createSwatchBar(category: "Brewer", name: "yellowBlue"),
                Self.teal.createSwatchBar(category: "Brewer", name: "teal"),
                Self.greenTeal.createSwatchBar(category: "Brewer", name: "greenTeal"),
                Self.purple.createSwatchBar(category: "Brewer", name: "purple"),
                Self.orangePurple.createSwatchBar(category: "Brewer", name: "orangePurple"),
                Self.sunset.createSwatchBar(category: "Brewer", name: "sunset"),
                Self.magenta.createSwatchBar(category: "Brewer", name: "magenta"),
                Self.sunsetDark.createSwatchBar(category: "Brewer", name: "sunsetDark"),
                Self.yellowBrown.createSwatchBar(category: "Brewer", name: "yellowBrown"),

                Self.rainbow.createSwatchBar(category: "Plotly", name: "rainbow"),
                Self.jet.createSwatchBar(category: "Plotly", name: "jet"),
                Self.hot.createSwatchBar(category: "Plotly", name: "hot"),
                Self.blackBody.createSwatchBar(category: "Plotly", name: "blackBody"),
                Self.earth.createSwatchBar(category: "Plotly", name: "earth"),
                Self.electric.createSwatchBar(category: "Plotly", name: "electric"),
                Self.viridis.createSwatchBar(category: "Plotly", name: "viridis"),
                Self.cividis.createSwatchBar(category: "Plotly", name: "cividis"),
                Self.plotly3.createSwatchBar(category: "Plotly", name: "plotly3"),
                Self.inferno.createSwatchBar(category: "Plotly", name: "inferno"),
                Self.magma.createSwatchBar(category: "Plotly", name: "magma"),
                Self.plasma.createSwatchBar(category: "Plotly", name: "plasma")
            ]
            return ColorScale.createSwatchBarFigure(title: "Sequential Color Scales Swatch",
                data: swatchBars)
        }
    }

    /// Color scales for continuous data with a natural center point.
    ///
    /// Diverging color scales are appropriate for continuous data that has a natural midpoint or
    /// other informative special value, such as 0. For example altitude, or boiling point of a liquid.
    public enum Diverging {

        // MARK: Ocean
        /// Diverging _Ocean_ color scale.
        public static let topo = Ocean.topo
        /// Diverging _Ocean_ color scale.
        public static let balance = Ocean.balance
        /// Diverging _Ocean_ color scale.
        public static let delta = Ocean.delta
        /// Diverging _Ocean_ color scale.
        public static let curl = Ocean.curl
        /// Diverging _Ocean_ color scale.
        public static let diff = Ocean.diff
        /// Diverging _Ocean_ color scale.
        public static let tarn = Ocean.tarn

        // MARK: Brewer
        /// Diverging _Brewer_ color scale.
        public static let brownTeal = Brewer.brownTeal
        /// Diverging _Brewer_ color scale.
        public static let pinkGreen = Brewer.pinkGreen
        /// Diverging _Brewer_ color scale.
        public static let purpleGreen = Brewer.purpleGreen
        /// Diverging _Brewer_ color scale.
        public static let purpleOrange = Brewer.purpleOrange
        /// Diverging _Brewer_ color scale.
        public static let redBlue = Brewer.redBlue
        /// Diverging _Brewer_ color scale.
        public static let redGray = Brewer.redGray
        /// Diverging _Brewer_ color scale.
        public static let redYellowBlue = Brewer.redYellowBlue
        /// Diverging _Brewer_ color scale.
        public static let redYellowGreen = Brewer.redYellowGreen
        /// Diverging _Brewer_ color scale.
        public static let spectral = Brewer.spectral

        // MARK: Carto
        /// Diverging _Carto_ color scale.
        public static let armyRose = Carto.armyRose
        /// Diverging _Carto_ color scale.
        public static let fall = Carto.fall
        /// Diverging _Carto_ color scale.
        public static let geyser = Carto.geyser
        /// Diverging _Carto_ color scale.
        public static let temps = Carto.temps
        /// Diverging _Carto_ color scale.
        public static let tealRose = Carto.tealRose
        /// Diverging _Carto_ color scale.
        public static let tropic = Carto.tropic
        /// Diverging _Carto_ color scale.
        public static let earth = Carto.earth

        // MARK: Plotly
        /// Diverging _Plotly_ color scale.
        public static let picnic = Plotly.picnic
        /// Diverging _Plotly_ color scale.
        public static let portland = Plotly.portland

        /// Creates a figure that shows all _Diverging_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchBars = [
                Self.topo.createSwatchBar(category: "Ocean", name: "topo"),
                Self.balance.createSwatchBar(category: "Ocean", name: "balance"),
                Self.delta.createSwatchBar(category: "Ocean", name: "delta"),
                Self.curl.createSwatchBar(category: "Ocean", name: "curl"),
                Self.diff.createSwatchBar(category: "Ocean", name: "diff"),
                Self.tarn.createSwatchBar(category: "Ocean", name: "tarn"),

                Self.brownTeal.createSwatchBar(category: "Brewer", name: "brownTeal"),
                Self.purpleGreen.createSwatchBar(category: "Brewer", name: "purpleGreen"),
                Self.pinkGreen.createSwatchBar(category: "Brewer", name: "pinkGreen"),
                Self.purpleOrange.createSwatchBar(category: "Brewer", name: "purpleOrange"),
                Self.redBlue.createSwatchBar(category: "Brewer", name: "redBlue"),
                Self.redGray.createSwatchBar(category: "Brewer", name: "redGray"),
                Self.redYellowBlue.createSwatchBar(category: "Brewer", name: "redYellowBlue"),
                Self.redYellowGreen.createSwatchBar(category: "Brewer", name: "redYellowGreen"),
                Self.spectral.createSwatchBar(category: "Brewer", name: "spectral"),

                Self.armyRose.createSwatchBar(category: "Carto", name: "armyRose"),
                Self.fall.createSwatchBar(category: "Carto", name: "fall"),
                Self.geyser.createSwatchBar(category: "Carto", name: "geyser"),
                Self.temps.createSwatchBar(category: "Carto", name: "temps"),
                Self.tealRose.createSwatchBar(category: "Carto", name: "tealRose"),
                Self.tropic.createSwatchBar(category: "Carto", name: "tropic"),
                Self.earth.createSwatchBar(category: "Carto", name: "earth"),

                Self.picnic.createSwatchBar(category: "Plotly", name: "picnic"),
                Self.portland.createSwatchBar(category: "Plotly", name: "portland")
            ]
            return ColorScale.createSwatchBarFigure(title: "Diverging Color Scales Swatch",
                data: swatchBars)
        }
    }

    /// Periodic color scales that wrap around the ends.
    ///
    /// Cyclical color scales are appropriate for continuous data that have a natural repeating structure.
    /// For example temporal data (hour of day, day of week, day of year, seasons), complex numbers,
    /// angles or other phase data. All scales start and end with the same color.
    ///
    /// - Copyright:
    /// Adapted from [Plotly.py](https://github.com/plotly/plotly.py), licensed under the
    /// [MIT license](https://github.com/plotly/plotly.py/blob/master/LICENSE.txt).
    public enum Cyclical {

        /// Plotly cyclical color scale.
        public static let twilight = Plotly.twilight
        /// Plotly cyclical color scale.
        public static let iceFire = Plotly.iceFire
        /// Plotly cyclical color scale.
        public static let edge = Plotly.edge
        /// Ocean cyclical color scale.
        public static let phase = Ocean.phase
        /// Plotly cyclical color scale.
        public static let hsv = Plotly.hsv
        /// Plotly cyclical color scale.
        public static let magentaRedYellowBlue = Plotly.magentaRedYellowBlue
        /// Plotly cyclical color scale.
        public static let magentaYellowGreenBlue = Plotly.magentaYellowGreenBlue

        /// Creates a figure that shows all _Cyclic_ color scales next to each other.
        public static func swatch() -> Figure {
            let swatchCircles = [
                Cyclical.twilight.crateSwatchCircle(name: "twilight", subPlot: 1),
                Cyclical.iceFire.crateSwatchCircle(name: "iceFire", subPlot: 2),
                Cyclical.edge.crateSwatchCircle(name: "edge", subPlot: 3),
                Cyclical.phase.crateSwatchCircle(name: "phase", subPlot: 4),
                Cyclical.hsv.crateSwatchCircle(name: "hsv", subPlot: 5),
                Cyclical.magentaRedYellowBlue.crateSwatchCircle(name: "magentaRedYellowBlue", subPlot: 6),
                Cyclical.magentaYellowGreenBlue.crateSwatchCircle(name: "magentaYellowGreenBlue", subPlot: 7)
            ]

            let layout = Layout(
                title: "Cyclical Color Scales Swatch",
                showLegend: false,
                polar: .init(
                    radialAxis: .init(visible: false),
                    angularAxis: .init(visible: false)
                )
            )
            return Figure(data: swatchCircles, layout: layout)
        }
    }

    /// Sequential, perceptually uniform, single-hue color scale.
    public static let blues = Brewer.blues
    /// Sequential, perceptually uniform, single-hue color scale.
    public static let greens = Brewer.greens
    /// Sequential, perceptually uniform, single-hue color scale.
    public static let grays = Brewer.grays
    /// Sequential, perceptually uniform, single-hue color scale.
    public static let oranges = Brewer.oranges
    /// Sequential, perceptually uniform, single-hue color scale.
    public static let purples = Brewer.purples
    /// Sequential, perceptually uniform, single-hue color scale.
    public static let reds = Brewer.reds
    /// Sequential color scale inspired by sundown.
    public static let sunset = Carto.sunsetDark
    /// Sequential color scale originating from Matplotlib.
    public static let viridis = Plotly.viridis
    /// Sequential color scale originating from Matplotlib.
    public static let magma = Plotly.magma
    /// Sequential color scale originating from Matplotlib.
    public static let plasma = Plotly.plasma
    /// Sequential color scale originating from Matplotlib.
    public static let inferno = Plotly.inferno
    /// Diverging color scale for data with a natural center point.
    public static let redBlue = Brewer.redBlue
    /// Diverging color scale for data with a natural center point.
    public static let pinkGreen = Brewer.pinkGreen
    /// Diverging color scale appropriate for temperature-like data.
    public static let temps = Carto.temps
    /// Cyclical color scale that spans all hues at a constant lightness value.
    public static let phase = Ocean.phase

    /// Creates a figure that shows all popular color scales next to each other.
    public static func swatch() -> Figure {
        let swatchBars = [
            Self.blues.createSwatchBar(category: "Sequential", name: "blues"),
            Self.greens.createSwatchBar(category: "Sequential", name: "greens"),
            Self.grays.createSwatchBar(category: "Sequential", name: "grays"),
            Self.oranges.createSwatchBar(category: "Sequential", name: "oranges"),
            Self.purples.createSwatchBar(category: "Sequential", name: "purples"),
            Self.reds.createSwatchBar(category: "Sequential", name: "reds"),
            Self.sunset.createSwatchBar(category: "Sequential", name: "sunset"),
            Self.viridis.createSwatchBar(category: "Sequential", name: "viridis"),
            Self.magma.createSwatchBar(category: "Sequential", name: "magma"),
            Self.plasma.createSwatchBar(category: "Sequential", name: "plasma"),
            Self.inferno.createSwatchBar(category: "Sequential", name: "inferno"),

            Self.redBlue.createSwatchBar(category: "Diverging", name: "redBlue"),
            Self.pinkGreen.createSwatchBar(category: "Diverging", name: "pinkGreen"),
            Self.temps.createSwatchBar(category: "Diverging", name: "temps"),

            Self.phase.createSwatchBar(category: "Cyclical", name: "phase")
        ]
        return Self.createSwatchBarFigure(title: "Frequent Color Scales Swatch",
            data: swatchBars)
    }

    /// Ordered collection of normalized, non-decreasing scale values and corresponding colors.
    public let scalesColors: [(Double, Color)]

    /// Ordered collection containing just normalized, non-decreasing scale values.
    public var scales: [Double] {
        scalesColors.map { $0.0 }
    }

    /// Ordered collection containing just the colors.
    public var colors: [Color] {
        scalesColors.map { $0.1 }
    }

    /// Creates color scale from a list of colors.
    ///
    /// The colors in the list are placed at a constant distance from each other and the values
    /// in between them are linearly interpolated. First color is assigned to the minimum value
    /// and the last color to the maximum.
    ///
    /// The following example crates a three color red-green-blue color scale:
    /// ```
    /// let rgb: ColorScale = [.red, .green, .blue])
    /// ```
    ///
    /// - Precondition: Collection `scalesColors` has to contain at least 2 items.
    public init(interpolate colors: [Color]) {
        precondition(colors.count > 1)
        let scales = [Double](stride(from: 0.0, through: 1.0, by: 1.0 / Double(colors.count - 1)))
        scalesColors = zip(scales, colors).map { $0 }
    }

    /// Creates color scale from a dictionary that maps normalized numeric values to colors.
    ///
    /// The colors in the list are placed at the value specified by the key. Values in between them
    /// are linearly interpolated. First color with `0.0` key is assigned to the minimum value
    /// and the the color with `1.0` index is assigned to the maximum.
    ///
    /// The following example creates an asymmetric color scale where change from red to
    /// green happens in the 30% of the data range.
    /// ```
    /// let rgb = ColorScale(interpolate: [0: .red, 0.3: .green, 1.0, .blue])
    /// ```
    ///
    /// - Precondition: Dictionary `scalesColors` has to contain at least 2 items.
    ///
    /// - Warning: There's no validation. In particular, nothing prevents scale values outside of the [0,1]
    /// range or other degenerated corner cases.
    public init(interpolate scalesColors: [Double: Color]) {
        precondition(scalesColors.count > 1)
        self.scalesColors = scalesColors.sorted{ $0.key < $1.key }
    }

    /// Creates color scale from a list of colors with associated values.
    ///
    /// This constructor is particularly useful for discontinuous color scales. The following example creates
    /// a two color white-black color scale without any smooth interpolation in between:
    /// ```
    /// let whiteBlackStep = ColorScale(interpolate: [
    ///     (0.0: .white),
    ///     (0.5: .white),
    ///     (0.5, .black),
    ///     (1.0, .black)
    /// ])
    /// ```
    ///
    /// - Precondition: Collection `scalesColors` has to contain at least 2 items.
    ///
    /// - Warning: There's no validation. In particular, nothing prevents scale values outside of the [0,1]
    /// range or other degenerated corner cases.
    public init(interpolate scalesColors: [(Double, Color)]) {
        precondition(scalesColors.count > 1)
        self.scalesColors = scalesColors
    }

    /// Returns the color scale flipped around the center point.
    public func reversed() -> ColorScale {
        let reversedItems = scalesColors.map { (1.0 - $0.0, $0.1) }.reversed().map { $0 }
        return ColorScale(interpolate: reversedItems)
    }

    /// Encode the color scale to a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        for (value, color) in scalesColors  {
            var subContainer = container.nestedUnkeyedContainer()
            try subContainer.encode(value)
            try subContainer.encode(color)
        }
    }

}


extension ColorScale: ExpressibleByArrayLiteral {
    /// Creates a color scale from a color array  literal.
    ///
    /// The following code creates a gray color scale:
    /// ```
    /// let grays: ColorScale = [.white, .black]
    /// ```
    ///
    /// - Precondition: Array has to contain at least 2 colors.
    public init(arrayLiteral colors: Color...) {
        self.init(interpolate: colors)
    }
}


extension ColorScale: ExpressibleByDictionaryLiteral {
    /// Creates color scale from a double-color dictionary literal.
    ///
    /// The following code creates a gray color scale:
    /// ```
    /// let grays: ColorScale = [0.0: .white, 1.0: .black]
    /// ```
    ///
    /// - Precondition: The dictionary has to contain at least 2 color-scale pairs.
    ///
    /// - Warning: There's no validation. In particular, nothing prevents scale values outside of the [0,1]
    /// range or other degenerated corner cases.
    public init(dictionaryLiteral scalesColors: (Double, Color)...) {
        self.init(interpolate: Dictionary(uniqueKeysWithValues: scalesColors))
    }
}


fileprivate extension ColorScale {
    /// Constructs trace that displays the color scale range.
    func createSwatchBar(category: String, name: String) -> Bar<[Int], [[String]]> {
        let resolution = 200
        return Bar(
            name: name,
            hoverInfo: Shared.HoverInfo.none,
            x: [Int](repeating: 1, count: resolution),
            y: [[String](repeating: category, count: resolution),
                [String](repeating: name, count: resolution)],
            orientation: .h,
            marker: Shared.Marker(
                coloring: .colorScale([Double](stride(from: 0.0, to: Double(resolution), by: 1.0))),
                colorScale: self
            )
        )
    }

    /// Builds a figure that displays the color scales above each other for comparison.
    static func createSwatchBarFigure(title: String, data swatches: [Trace]) -> Figure {
        let layout = Layout(
            barMode: .stack,
            barNormalization: .fraction,
            title: .init(text: title),
            width: 600,
            height: Double(swatches.count) * 40,
            margin: .init(autoExpand: true),
            showLegend: false,
            xAxis: .init(visible: false),
            yAxis: .init(autoMargin: true)
        )
        return Figure(data: swatches.reversed(), layout: layout)
    }

    /// Constructs `BarPolar` trace that displays the cyclical scale range.
    func crateSwatchCircle(name: String, subPlot: Int) -> BarPolar<[Int], [Double]> {
        let resolution = 360.0
        return BarPolar(
            name: name,
            r: [Int](repeating: 1, count: Int(resolution)),
            theta: [Double](stride(from: 0.0, through: 360.0, by: 360.0 / resolution)),
            base: .constant(0.75),
            width: .constant(360.0 / resolution),
            marker: .init(
                coloring: .colorScale([Double](stride(from: 0.0, to: resolution, by: 1.0))),
                colorScale: self
            ),
            hoverTemplate: .constant(name),
            subPlot: "polar\(subPlot)"
        )
    }
}
