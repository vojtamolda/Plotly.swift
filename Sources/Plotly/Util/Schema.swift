
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

    public init(floatLiteral float: Double) {
        self = .numeric(float)
    }
}
extension Anything: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralElement = Int

    public init(integerLiteral integer: Int) {
        self = .numeric(Double(integer))
    }
}
extension Anything: ExpressibleByStringLiteral {
    public typealias StringLiteralElement = String

    public init(stringLiteral string: String) {
        self = .string(string)
    }
}


// TODO: Docs
public enum InfoArray: Encodable {
    case numeric([Double])
    case string([String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
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

    public init(arrayLiteral array: Double...) {
        self = .numeric(array)
    }
}
