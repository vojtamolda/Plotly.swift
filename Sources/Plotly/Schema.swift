
/// Color expressed in RGB, HSV or HTML named format. Optionally with transparency.
public enum Color: Encodable {
    case RGB(_ red: UInt8, _ green: UInt8, _ blue: UInt8, _ alpha: Double = 1.0)
    case HSL(_ hue: Double, _ saturation: Double, _ lighness: Double, _ alpha: Double = 1.0)
    case named(_ name: String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .RGB(let red, let  green, let blue, let alpha):
            try container.encode("rgba(\(red), \(green), \(blue), \(alpha))")
        case .HSL(let hue, let saturation, let lightness, let alpha):
            try container.encode("hsla(\(hue), \(saturation), \(lightness), \(alpha))")
        case .named(let name):
            try container.encode(name)
        }
    }
}

/// List of `Color` objects.
public typealias ColorList = [Color]

/// Color scale definition.
public enum ColorScale: Encodable {
    case greys
    case yellowGreenBlue
    case greens
    case yellowOrangeRed
    case blueRed
    case redBlue
    case reds
    case blues
    case picnic
    case rainbow
    case portland
    case jet
    case hot
    case blackBody
    case earth
    case electric
    case viridis
    case cividis
    case custom(colorMap: [Double: Color])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .greys:
            try container.encode("Greys")
        case .yellowGreenBlue:
            try container.encode("YlGnBu")
        case .greens:
            try container.encode("Greens")
        case .yellowOrangeRed:
            try container.encode("YlOrRd")
        case .blueRed:
            try container.encode("Bluered")
        case .redBlue:
            try container.encode("RdBu")
        case .reds:
            try container.encode("Reds")
        case .blues:
            try container.encode("Blues")
        case .picnic:
            try container.encode("Picnic")
        case .rainbow:
            try container.encode("Rainbow")
        case .portland:
            try container.encode("Portland")
        case .jet:
            try container.encode("Jet")
        case .hot:
            try container.encode("Hot")
        case .blackBody:
            try container.encode("Blackbody")
        case .earth:
            try container.encode("Earth")
        case .electric:
            try container.encode("Electric")
        case .viridis:
            try container.encode("Viridis")
        case .cividis:
            try container.encode("Cividis")
        case .custom(let colorMap):
            try container.encode(colorMap)
        }
    }
}

/// Angle value between -180 and +180.
/// - FIXME: Implement min/max validation with `@PropertyWrapper`
public typealias Angle = Double

/// Not yet implemented.
public typealias SubplotID = String

/// Not yet implemented.
public struct Anything: Encodable { }

/// Not yet implemented.
public struct InfoArray: Encodable { }
