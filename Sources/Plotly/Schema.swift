
// TODO: Docs
public enum ArrayOrDouble: Encodable {
    case value(Double)
    case array([Double])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let value):
            try container.encode(value)
        case .array(let array):
            try container.encode(array)
        }
    }
}
extension ArrayOrDouble: ExpressibleByFloatLiteral {
    public typealias FloatLiteralType = Double

    public init(floatLiteral: Double) {
        self = .value(floatLiteral)
    }

}
extension ArrayOrDouble: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = Int

    public init(integerLiteral: Int) {
        self = .value(Double(integerLiteral))
    }

}
extension ArrayOrDouble: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Double

    public init(arrayLiteral: Double...) {
        self = .array(arrayLiteral)
    }
}


// TODO: Docs
public enum ArrayOrInt: Encodable {
    case value(Int)
    case array([Int])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let value):
            try container.encode(value)
        case .array(let array):
            try container.encode(array)
        }
    }
}
extension ArrayOrInt: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = Int

    public init(integerLiteral: Int) {
        self = .value(integerLiteral)
    }

}
extension ArrayOrInt: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Int

    public init(arrayLiteral: Int...) {
        self = .array(arrayLiteral)
    }
}


// TODO: Docs
public enum ArrayOrString: Encodable {
    case value(String)
    case array([String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let value):
            try container.encode(value)
        case .array(let array):
            try container.encode(array)
        }
    }
}
extension ArrayOrString: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String

    public init(stringLiteral: String) {
        self = .value(stringLiteral)
    }
}
extension ArrayOrString: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral: String...) {
        self = .array(arrayLiteral)
    }
}

/// Color expressed in RGB, HSV or HTML named format. Optionally with transparency.
public enum Color: Encodable {
    case RGB(_ red: UInt8, _ green: UInt8, _ blue: UInt8, _ alpha: Double = 1.0)
    case HSL(_ hue: Float, _ saturation: Float, _ lightness: Float, _ alpha: Float = 1.0)
    case named(_ name: String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .RGB(let red, let green, let blue, let alpha):
            try container.encode("rgba(\(red), \(green), \(blue), \(alpha))")
        case .HSL(let hue, let saturation, let lightness, let alpha):
            try container.encode("hsla(\(hue), \(saturation), \(lightness), \(alpha))")
        case .named(let name):
            try container.encode(name)
        }
    }
}


// TODO: Docs
public enum ArrayOrColor: Encodable {
    case value(Color)
    case array([Double])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let value):
            try container.encode(value)
        case .array(let array):
            try container.encode(array)
        }
    }
}
extension ArrayOrColor: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Double

    public init(arrayLiteral: Double...) {
        self = .array(arrayLiteral)
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
public typealias SubPlotID = String


// TODO: Docs
public enum Anything: Encodable {
    case numeric(Double)
    case string(String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .numeric(let numeric):
            try container.encode(numeric)
        case .string(let string):
            try container.encode(string)
        }
    }
}
extension Anything: ExpressibleByFloatLiteral {
    public typealias FloatLiteralElement = Double

    public init(floatLiteral: Double) {
        self = .numeric(floatLiteral)
    }
}
extension Anything: ExpressibleByStringLiteral {
    public typealias StringLiteralElement = String

    public init(stringLiteral: String) {
        self = .string(stringLiteral)
    }
}


// TODO: Docs
public enum InfoArray: Encodable {
    case numeric([Double])
    case string([String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        switch self {
        case .numeric(let numerals):
            try container.encode(numerals)
        case .string(let strings):
            try container.encode(strings)
        }
    }
}
extension InfoArray: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Double

    public init(arrayLiteral: Double...) {
        self = .numeric(arrayLiteral)
    }
}
