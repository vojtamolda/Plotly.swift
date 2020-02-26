
/// Data structure that stores color, optionally with opacity.
///
/// Color can be expressed in a variety of ways:
///
/// * As a one of 100+ [CSS named colors](https://www.quackit.com/css/color/charts/css_color_names_chart.cfm) :
///   ```
///   let darkRed = Color.darkRed
///   ```
///
/// * As red, green and blue pixel intensities with optional alpha channel for transparency:
///   ```
///   let black = Color.RGB(255, 255, 255)
///   let blackTransparent = Color.RGB(255, 255, 255, 0.2)
///   ```
///
/// * As hue, saturation and lightness values, also with optional transparency:
///   ```
///   let pink = Color.HSL(300, 100, 50)
///   let pinkTransparent = Color.HSL(300, 100, 50, 0.3)
///   ```
///
/// * As a hexadecimal integer literal in `0xRRGGBB` format:
///   ```
///   let black: Color = 0xffffff
///   ```
///
/// Transparency is expressed as `alpha` channel between `0` (transparent) and `1` (opaque). Valid lightness and
/// saturation values are percentages between `0` and `100`. Hue represents a positive angle smaller than `360°`.
/// There are no checks, clippings or exceptions that enforce these constraints.
///
/// - SeeAlso:
/// [W3 Schools HTML Color Names](https://www.w3schools.com/colors/colors_names.asp)
///
/// - Warning:
/// CSS  hexadecimal 3-digit `#RGB` and 6-digit+transparency `#RRGGBBAA` formats are not supported.
/// For example the following code doesn't work as expected:
/// ```
/// let black: Color = 0xfff // Blue #000fff
/// let blackTransparent: Color = 0xffffff88 // Yellow #ffff88
/// ```
/// It's not possible to distinguish between these situations in Swift because they are all of the same type - a
/// hexadecimal 32-bit integer literal. Failures, tough, are usually very visible and produce a significantly
/// different result. The only correctly working format for literals is `#RRGGBB`.
public enum Color: Encodable {

    // MARK: Reds
    /// Indian red standard CSS color: `#cd5c5c` or `rgb(205,92,92)`.
    public static let indianRed = Self.CSS("IndianRed", 0xcd5c5c)
    /// Light coral standard CSS color: `#f08080` or `rgb(240,128,128)`.
    public static let lightCoral = Self.CSS("LightCoral", 0xf08080)
    /// Salmon standard CSS color: `#fa8072` or `rgb(250,128,114)`.
    public static let salmon = Self.CSS("Salmon", 0xfa8072)
    /// Dark salmon standard CSS color: `#e9967a` or `rgb(233,150,122)`.
    public static let darkSalmon = Self.CSS("DarkSalmon", 0xe9967a)
    /// Light salmon standard CSS color: `#ffa07a` or `rgb(255,160,122)`.
    public static let lightSalmon = Self.CSS("LightSalmon", 0xffa07a)
    /// Crimson standard CSS color: `#dc143c` or `rgb(220,20,60)`.
    public static let crimson = Self.CSS("Crimson", 0xdc143c)
    /// Red standard CSS color: `#ff0000` or `rgb(255,0,0)`.
    public static let red = Self.CSS("Red", 0xff0000)
    /// Fire brick standard CSS color: `#b22222` or `rgb(178,34,34)`.
    public static let fireBrick = Self.CSS("FireBrick", 0xb22222)
    /// Dark red standard CSS color: `#8b0000` or `rgb(139,0,0)`.
    public static let darkRed = Self.CSS("DarkRed", 0x8b0000)

    // MARK: Pinks
    /// Pink standard CSS color: `#ffc0cb` or `rgb(255,192,203)`.
    public static let pink = Self.CSS("Pink", 0xffc0cb)
    /// Light pink standard CSS color: `#ffb6c1` or `rgb(255,182,193)`.
    public static let lightPink = Self.CSS("LightPink", 0xffb6c1)
    /// Hot pink standard CSS color: `#ff69b4` or `rgb(255,105,180)`.
    public static let hotPink = Self.CSS("HotPink", 0xff69b4)
    /// Deep pink standard CSS color: `#ff1493` or `rgb(255,20,147)`.
    public static let deepPink = Self.CSS("DeepPink", 0xff1493)
    /// Medium violet red standard CSS color: `#c71585` or `rgb(199,21,133)`.
    public static let mediumVioletRed = Self.CSS("MediumVioletRed", 0xc71585)
    /// Pale violet red standard CSS color: `#db7093` or `rgb(219,112,147)`.
    public static let paleVioletRed = Self.CSS("PaleVioletRed", 0xdb7093)

    // MARK: Oranges
    /// Coral standard CSS color: `#ff7f50` or `rgb(255,127,80)`.
    public static let coral = Self.CSS("Coral", 0xff7f50)
    /// Tomato standard CSS color: `#ff6347` or `rgb(255,99,71)`.
    public static let tomato = Self.CSS("Tomato", 0xff6347)
    /// Orange red standard CSS color: `#ff4500` or `rgb(255,69,0)`.
    public static let orangeRed = Self.CSS("OrangeRed", 0xff4500)
    /// Dark orange standard CSS color: `#ff8c00` or `rgb(255,140,0)`.
    public static let darkOrange = Self.CSS("DarkOrange", 0xff8c00)
    /// Orange standard CSS color: `#ffa500` or `rgb(255,165,0)`.
    public static let orange = Self.CSS("Orange", 0xffa500)

    // MARK: Yellows
    /// Gold standard CSS color: `#ffd700` or `rgb(255,215,0)`.
    public static let gold = Self.CSS("Gold", 0xffd700)
    /// Yellow standard CSS color: `#ffff00` or `rgb(255,255,0)`.
    public static let yellow = Self.CSS("Yellow", 0xffff00)
    /// Light yellow standard CSS color: `#ffffe0` or `rgb(255,255,224)`.
    public static let lightYellow = Self.CSS("LightYellow", 0xffffe0)
    /// Lemon chiffon standard CSS color: `#fffacd` or `rgb(255,250,205)`.
    public static let lemonChiffon = Self.CSS("LemonChiffon", 0xfffacd)
    /// Light goldenrod yellow standard CSS color: `#fafad2` or `rgb(250,250,210)`.
    public static let lightGoldenrodYellow = Self.CSS("LightGoldenrodYellow", 0xfafad2)
    /// Papaya whip standard CSS color: `#ffefd5` or `rgb(255,239,213)`.
    public static let papayaWhip = Self.CSS("PapayaWhip", 0xffefd5)
    /// Moccasin standard CSS color: `#ffe4b5` or `rgb(255,228,181)`.
    public static let moccasin = Self.CSS("Moccasin", 0xffe4b5)
    /// Peach puff standard CSS color: `#ffdab9` or `rgb(255,218,185)`.
    public static let peachPuff = Self.CSS("PeachPuff", 0xffdab9)
    /// Pale goldenrod standard CSS color: `#eee8aa` or `rgb(238,232,170)`.
    public static let paleGoldenrod = Self.CSS("PaleGoldenrod", 0xeee8aa)
    /// Khaki standard CSS color: `#f0e68c` or `rgb(240,230,140)`.
    public static let khaki = Self.CSS("Khaki", 0xf0e68c)
    /// Dark khaki standard CSS color: `#bdb76b` or `rgb(189,183,107)`.
    public static let darkKhaki = Self.CSS("DarkKhaki", 0xbdb76b)

    // MARK: Purples
    /// Lavender standard CSS color: `#e6e6fa` or `rgb(230,230,250)`.
    public static let lavender = Self.CSS("Lavender", 0xe6e6fa)
    /// Thistle standard CSS color: `#d8bfd8` or `rgb(216,191,216)`.
    public static let thistle = Self.CSS("Thistle", 0xd8bfd8)
    /// Plum standard CSS color: `#dda0dd` or `rgb(221,160,221)`.
    public static let plum = Self.CSS("Plum", 0xdda0dd)
    /// Violet standard CSS color: `#ee82ee` or `rgb(238,130,238)`.
    public static let violet = Self.CSS("Violet", 0xee82ee)
    /// Orchid standard CSS color: `#da70d6` or `rgb(218,112,214)`.
    public static let orchid = Self.CSS("Orchid", 0xda70d6)
    /// Fuchsia standard CSS color: `#ff00ff` or `rgb(255,0,255)`.
    public static let fuchsia = Self.CSS("Fuchsia", 0xff00ff)
    /// Magenta standard CSS color: `#ff00ff` or `rgb(255,0,255)`.
    public static let magenta = Self.CSS("Magenta", 0xff00ff)
    /// Medium orchid standard CSS color: `#ba55d3` or `rgb(186,85,211)`.
    public static let mediumOrchid = Self.CSS("MediumOrchid", 0xba55d3)
    /// Medium purple standard CSS color: `#9370db` or `rgb(147,112,219)`.
    public static let mediumPurple = Self.CSS("MediumPurple", 0x9370db)
    /// Blue violet standard CSS color: `#8a2be2` or `rgb(138,43,226)`.
    public static let blueViolet = Self.CSS("BlueViolet", 0x8a2be2)
    /// Dark violet standard CSS color: `#9400d3` or `rgb(148,0,211)`.
    public static let darkViolet = Self.CSS("DarkViolet", 0x9400d3)
    /// Dark orchid standard CSS color: `#9932cc` or `rgb(153,50,204)`.
    public static let darkOrchid = Self.CSS("DarkOrchid", 0x9932cc)
    /// Dark magenta standard CSS color: `#8b008b` or `rgb(139,0,139)`.
    public static let darkMagenta = Self.CSS("DarkMagenta", 0x8b008b)
    /// Purple standard CSS color: `#800080` or `rgb(128,0,128)`.
    public static let purple = Self.CSS("Purple", 0x800080)
    /// Rebecca purple standard CSS color: `#663399` or `rgb(102,51,153)`.
    public static let rebeccaPurple = Self.CSS("RebeccaPurple", 0x663399)
    /// Indigo standard CSS color: `#4b0082` or `rgb(75,0,130)`.
    public static let indigo = Self.CSS("Indigo", 0x4b0082)
    /// Medium slate blue standard CSS color: `#7b68ee` or `rgb(123,104,238)`.
    public static let mediumSlateBlue = Self.CSS("MediumSlateBlue", 0x7b68ee)
    /// Slate blue standard CSS color: `#6a5acd` or `rgb(106,90,205)`.
    public static let slateBlue = Self.CSS("SlateBlue", 0x6a5acd)
    /// Dark slate blue standard CSS color: `#483d8b` or `rgb(72,61,139)`.
    public static let darkSlateBlue = Self.CSS("DarkSlateBlue", 0x483d8b)

    // MARK: Greens
    /// Green yellow standard CSS color: `#adff2f` or `rgb(173,255,47)`.
    public static let greenYellow = Self.CSS("GreenYellow", 0xadff2f)
    /// Chartreuse standard CSS color: `#7fff00` or `rgb(127,255,0)`.
    public static let chartreuse = Self.CSS("Chartreuse", 0x7fff00)
    /// Lawn green standard CSS color: `#7cfc00` or `rgb(124,252,0)`.
    public static let lawnGreen = Self.CSS("LawnGreen", 0x7cfc00)
    /// Lime standard CSS color: `#00ff00` or `rgb(0,255,0)`.
    public static let lime = Self.CSS("Lime", 0x00ff00)
    /// Lime green standard CSS color: `#32cd32` or `rgb(50,205,50)`.
    public static let limeGreen = Self.CSS("LimeGreen", 0x32cd32)
    /// Pale green standard CSS color: `#98fb98` or `rgb(152,251,152)`.
    public static let paleGreen = Self.CSS("PaleGreen", 0x98fb98)
    /// Light green standard CSS color: `#90ee90` or `rgb(144,238,144)`.
    public static let lightGreen = Self.CSS("LightGreen", 0x90ee90)
    /// Medium spring green standard CSS color: `#00fa9a` or `rgb(0,250,154)`.
    public static let mediumSpringGreen = Self.CSS("MediumSpringGreen", 0x00fa9a)
    /// Spring green standard CSS color: `#00ff7f` or `rgb(0,255,127)`.
    public static let springGreen = Self.CSS("SpringGreen", 0x00ff7f)
    /// Medium sea green standard CSS color: `#3cb371` or `rgb(60,179,113)`.
    public static let mediumSeaGreen = Self.CSS("MediumSeaGreen", 0x3cb371)
    /// Sea green standard CSS color: `#2e8b57` or `rgb(46,139,87)`.
    public static let seaGreen = Self.CSS("SeaGreen", 0x2e8b57)
    /// Forest green standard CSS color: `#228b22` or `rgb(34,139,34)`.
    public static let forestGreen = Self.CSS("ForestGreen", 0x228b22)
    /// Green standard CSS color: `#008000` or `rgb(0,128,0)`.
    public static let green = Self.CSS("Green", 0x008000)
    /// Dark green standard CSS color: `#006400` or `rgb(0,100,0)`.
    public static let darkGreen = Self.CSS("DarkGreen", 0x006400)
    /// Yellow green standard CSS color: `#9acd32` or `rgb(154,205,50)`.
    public static let yellowGreen = Self.CSS("YellowGreen", 0x9acd32)
    /// Olive drab standard CSS color: `#6b8e23` or `rgb(107,142,35)`.
    public static let oliveDrab = Self.CSS("OliveDrab", 0x6b8e23)
    /// Olive standard CSS color: `#808000` or `rgb(128,128,0)`.
    public static let olive = Self.CSS("Olive", 0x808000)
    /// Dark olive green standard CSS color: `#556b2f` or `rgb(85,107,47)`.
    public static let darkOliveGreen = Self.CSS("DarkOliveGreen", 0x556b2f)
    /// Medium aquamarine standard CSS color: `#66cdaa` or `rgb(102,205,170)`.
    public static let mediumAquamarine = Self.CSS("MediumAquamarine", 0x66cdaa)
    /// Dark sea green standard CSS color: `#8fbc8f` or `rgb(143,188,143)`.
    public static let darkSeaGreen = Self.CSS("DarkSeaGreen", 0x8fbc8f)
    /// Light sea green standard CSS color: `#20b2aa` or `rgb(32,178,170)`.
    public static let lightSeaGreen = Self.CSS("LightSeaGreen", 0x20b2aa)
    /// Dark cyan standard CSS color: `#008b8b` or `rgb(0,139,139)`.
    public static let darkCyan = Self.CSS("DarkCyan", 0x008b8b)
    /// Teal standard CSS color: `#008080` or `rgb(0,128,128)`.
    public static let teal = Self.CSS("Teal", 0x008080)

    // MARK: Blues/Cyans
    /// Aqua standard CSS color: `#00ffff` or `rgb(0,255,255)`.
    public static let aqua = Self.CSS("Aqua", 0x00ffff)
    /// Cyan standard CSS color: `#00ffff` or `rgb(0,255,255)`.
    public static let cyan = Self.CSS("Cyan", 0x00ffff)
    /// Light cyan standard CSS color: `#e0ffff` or `rgb(224,255,255)`.
    public static let lightCyan = Self.CSS("LightCyan", 0xe0ffff)
    /// Pale turquoise standard CSS color: `#afeeee` or `rgb(175,238,238)`.
    public static let paleTurquoise = Self.CSS("PaleTurquoise", 0xafeeee)
    /// Aquamarine standard CSS color: `#7fffd4` or `rgb(127,255,212)`.
    public static let aquamarine = Self.CSS("Aquamarine", 0x7fffd4)
    /// Turquoise standard CSS color: `#40e0d0` or `rgb(64,224,208)`.
    public static let turquoise = Self.CSS("Turquoise", 0x40e0d0)
    /// Medium turquoise standard CSS color: `#48d1cc` or `rgb(72,209,204)`.
    public static let mediumTurquoise = Self.CSS("MediumTurquoise", 0x48d1cc)
    /// Dark turquoise standard CSS color: `#00ced1` or `rgb(0,206,209)`.
    public static let darkTurquoise = Self.CSS("DarkTurquoise", 0x00ced1)
    /// Cadet blue standard CSS color: `#5f9ea0` or `rgb(95,158,160)`.
    public static let cadetBlue = Self.CSS("CadetBlue", 0x5f9ea0)
    /// Steel blue standard CSS color: `#4682b4` or `rgb(70,130,180)`.
    public static let steelBlue = Self.CSS("SteelBlue", 0x4682b4)
    /// Light steel blue standard CSS color: `#b0c4de` or `rgb(176,196,222)`.
    public static let lightSteelBlue = Self.CSS("LightSteelBlue", 0xb0c4de)
    /// Powder blue standard CSS color: `#b0e0e6` or `rgb(176,224,230)`.
    public static let powderBlue = Self.CSS("PowderBlue", 0xb0e0e6)
    /// Light blue standard CSS color: `#add8e6` or `rgb(173,216,230)`.
    public static let lightBlue = Self.CSS("LightBlue", 0xadd8e6)
    /// Sky blue standard CSS color: `#87ceeb` or `rgb(135,206,235)`.
    public static let skyBlue = Self.CSS("SkyBlue", 0x87ceeb)
    /// Light sky blue standard CSS color: `#87cefa` or `rgb(135,206,250)`.
    public static let lightSkyBlue = Self.CSS("LightSkyBlue", 0x87cefa)
    /// Deep sky blue standard CSS color: `#00bfff` or `rgb(0,191,255)`.
    public static let deepSkyBlue = Self.CSS("DeepSkyBlue", 0x00bfff)
    /// Dodger blue standard CSS color: `#1e90ff` or `rgb(30,144,255)`.
    public static let dodgerBlue = Self.CSS("DodgerBlue", 0x1e90ff)
    /// Cornflower blue standard CSS color: `#6495ed` or `rgb(100,149,237)`.
    public static let cornflowerBlue = Self.CSS("CornflowerBlue", 0x6495ed)
    /// Royal blue standard CSS color: `#4169e1` or `rgb(65,105,225)`.
    public static let royalBlue = Self.CSS("RoyalBlue", 0x4169e1)
    /// Blue standard CSS color: `#0000ff` or `rgb(0,0,255)`.
    public static let blue = Self.CSS("Blue", 0x0000ff)
    /// Medium blue standard CSS color: `#0000cd` or `rgb(0,0,205)`.
    public static let mediumBlue = Self.CSS("MediumBlue", 0x0000cd)
    /// Dark blue standard CSS color: `#00008b` or `rgb(0,0,139)`.
    public static let darkBlue = Self.CSS("DarkBlue", 0x00008b)
    /// Navy standard CSS color: `#000080` or `rgb(0,0,128)`.
    public static let navy = Self.CSS("Navy", 0x000080)
    /// Midnight blue standard CSS color: `#191970` or `rgb(25,25,112)`.
    public static let midnightBlue = Self.CSS("MidnightBlue", 0x191970)

    // MARK: Browns
    /// Cornsilk standard CSS color: `#fff8dc` or `rgb(255,248,220)`.
    public static let cornsilk = Self.CSS("Cornsilk", 0xfff8dc)
    /// Blanched almond standard CSS color: `#ffebcd` or `rgb(255,235,205)`.
    public static let blanchedAlmond = Self.CSS("BlanchedAlmond", 0xffebcd)
    /// Bisque standard CSS color: `#ffe4c4` or `rgb(255,228,196)`.
    public static let bisque = Self.CSS("Bisque", 0xffe4c4)
    /// Navajo white standard CSS color: `#ffdead` or `rgb(255,222,173)`.
    public static let navajoWhite = Self.CSS("NavajoWhite", 0xffdead)
    /// Wheat standard CSS color: `#f5deb3` or `rgb(245,222,179)`.
    public static let wheat = Self.CSS("Wheat", 0xf5deb3)
    /// Burly wood standard CSS color: `#deb887` or `rgb(222,184,135)`.
    public static let burlyWood = Self.CSS("BurlyWood", 0xdeb887)
    /// Tan standard CSS color: `#d2b48c` or `rgb(210,180,140)`.
    public static let tan = Self.CSS("Tan", 0xd2b48c)
    /// Rosy brown standard CSS color: `#bc8f8f` or `rgb(188,143,143)`.
    public static let rosyBrown = Self.CSS("RosyBrown", 0xbc8f8f)
    /// Sandy brown standard CSS color: `#f4a460` or `rgb(244,164,96)`.
    public static let sandyBrown = Self.CSS("SandyBrown", 0xf4a460)
    /// Goldenrod standard CSS color: `#daa520` or `rgb(218,165,32)`.
    public static let goldenrod = Self.CSS("Goldenrod", 0xdaa520)
    /// Dark goldenrod standard CSS color: `#b8860b` or `rgb(184,134,11)`.
    public static let darkGoldenrod = Self.CSS("DarkGoldenrod", 0xb8860b)
    /// Peru standard CSS color: `#cd853f` or `rgb(205,133,63)`.
    public static let peru = Self.CSS("Peru", 0xcd853f)
    /// Chocolate standard CSS color: `#d2691e` or `rgb(210,105,30)`.
    public static let chocolate = Self.CSS("Chocolate", 0xd2691e)
    /// Saddle brown standard CSS color: `#8b4513` or `rgb(139,69,19)`.
    public static let saddleBrown = Self.CSS("SaddleBrown", 0x8b4513)
    /// Sienna standard CSS color: `#a0522d` or `rgb(160,82,45)`.
    public static let sienna = Self.CSS("Sienna", 0xa0522d)
    /// Brown standard CSS color: `#a52a2a` or `rgb(165,42,42)`.
    public static let brown = Self.CSS("Brown", 0xa52a2a)
    /// Maroon standard CSS color: `#800000` or `rgb(128,0,0)`.
    public static let maroon = Self.CSS("Maroon", 0x800000)

    // MARK: Whites
    /// White standard CSS color: `#ffffff` or `rgb(255,255,255)`.
    public static let white = Self.CSS("White", 0xffffff)
    /// Snow standard CSS color: `#fffafa` or `rgb(255,250,250)`.
    public static let snow = Self.CSS("Snow", 0xfffafa)
    /// Honeydew standard CSS color: `#f0fff0` or `rgb(240,255,240)`.
    public static let honeydew = Self.CSS("Honeydew", 0xf0fff0)
    /// Mint cream standard CSS color: `#f5fffa` or `rgb(245,255,250)`.
    public static let mintCream = Self.CSS("MintCream", 0xf5fffa)
    /// Azure standard CSS color: `#f0ffff` or `rgb(240,255,255)`.
    public static let azure = Self.CSS("Azure", 0xf0ffff)
    /// Alice blue standard CSS color: `#f0f8ff` or `rgb(240,248,255)`.
    public static let aliceBlue = Self.CSS("AliceBlue", 0xf0f8ff)
    /// Ghost white standard CSS color: `#f8f8ff` or `rgb(248,248,255)`.
    public static let ghostWhite = Self.CSS("GhostWhite", 0xf8f8ff)
    /// White smoke standard CSS color: `#f5f5f5` or `rgb(245,245,245)`.
    public static let whiteSmoke = Self.CSS("WhiteSmoke", 0xf5f5f5)
    /// Seashell standard CSS color: `#fff5ee` or `rgb(255,245,238)`.
    public static let seashell = Self.CSS("Seashell", 0xfff5ee)
    /// Beige standard CSS color: `#f5f5dc` or `rgb(245,245,220)`.
    public static let beige = Self.CSS("Beige", 0xf5f5dc)
    /// Old lace standard CSS color: `#fdf5e6` or `rgb(253,245,230)`.
    public static let oldLace = Self.CSS("OldLace", 0xfdf5e6)
    /// Floral white standard CSS color: `#fffaf0` or `rgb(255,250,240)`.
    public static let floralWhite = Self.CSS("FloralWhite", 0xfffaf0)
    /// Ivory standard CSS color: `#fffff0` or `rgb(255,255,240)`.
    public static let ivory = Self.CSS("Ivory", 0xfffff0)
    /// Antique white standard CSS color: `#faebd7` or `rgb(250,235,215)`.
    public static let antiqueWhite = Self.CSS("AntiqueWhite", 0xfaebd7)
    /// Linen standard CSS color: `#faf0e6` or `rgb(250,240,230)`.
    public static let linen = Self.CSS("Linen", 0xfaf0e6)
    /// Lavender blush standard CSS color: `#fff0f5` or `rgb(255,240,245)`.
    public static let lavenderBlush = Self.CSS("LavenderBlush", 0xfff0f5)
    /// Misty rose standard CSS color: `#ffe4e1` or `rgb(255,228,225)`.
    public static let mistyRose = Self.CSS("MistyRose", 0xffe4e1)

    // MARK: Grays
    /// Gainsboro standard CSS color: `#dcdcdc` or `rgb(220,220,220)`.
    public static let gainsboro = Self.CSS("Gainsboro", 0xdcdcdc)
    /// Light gray standard CSS color: `#d3d3d3` or `rgb(211,211,211)`.
    public static let lightGray = Self.CSS("LightGray", 0xd3d3d3)
    /// Silver standard CSS color: `#c0c0c0` or `rgb(192,192,192)`.
    public static let silver = Self.CSS("Silver", 0xc0c0c0)
    /// Dark gray standard CSS color: `#a9a9a9` or `rgb(169,169,169)`.
    public static let darkGray = Self.CSS("DarkGray", 0xa9a9a9)
    /// Gray standard CSS color: `#808080` or `rgb(128,128,128)`.
    public static let gray = Self.CSS("Gray", 0x808080)
    /// Dim gray standard CSS color: `#696969` or `rgb(105,105,105)`.
    public static let dimGray = Self.CSS("DimGray", 0x696969)
    /// Light slate gray standard CSS color: `#778899` or `rgb(119,136,153)`.
    public static let lightSlateGray = Self.CSS("LightSlateGray", 0x778899)
    /// Slate gray standard CSS color: `#708090` or `rgb(112,128,144)`.
    public static let slateGray = Self.CSS("SlateGray", 0x708090)
    /// Dark slate gray standard CSS color: `#2f4f4f` or `rgb(47,79,79)`.
    public static let darkSlateGray = Self.CSS("DarkSlateGray", 0x2f4f4f)
    /// Black standard CSS color: `#000000` or `rgb(0,0,0)`.
    public static let black = Self.CSS("Black", 0x000000)

    case value(_ value: UInt32)
    case RGB(_ red: UInt8, _ green: UInt8, _ blue: UInt8, _ alpha: Float? = nil)
    case HSL(_ hue: Float, _ saturation: Float, _ lightness: Float, _ alpha: Float? = nil)
    case CSS(_ name: String, _ value: UInt32? = nil)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let value):
            try container.encode(String(format: "#%06x", value))
        case .RGB(let red, let green, let blue, let alpha):
            if alpha == nil {
                try container.encode("rgb(\(red), \(green), \(blue)")
            } else {
                try container.encode("rgba(\(red), \(green), \(blue), \(alpha!))")
            }
        case .HSL(let hue, let saturation, let lightness, let alpha):
            if alpha == nil {
                try container.encode("hsl(\(hue), \(saturation), \(lightness)")
            } else {
                try container.encode("hsla(\(hue), \(saturation), \(lightness), \(alpha!))")
            }
        case .CSS(let name, _):
            try container.encode(name)
        }
    }
}


extension Color: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = UInt32

    public init(integerLiteral value: UInt32) {
        self = .value(value)
    }
}
