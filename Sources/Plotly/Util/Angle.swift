
/// Angle wrapped to be between -180 and +180 degrees.
public struct Angle {
    let degrees: Double

    // TODO: Docs
    public init(_ degrees: Double) {
        self.degrees = (degrees + 360.0).remainder(dividingBy: 360.0)
    }
}

extension Angle: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(degrees)
    }
}

extension Angle: ExpressibleByFloatLiteral {
    public init(floatLiteral double: Double) {
        self.init(double)
    }
}

extension Angle: ExpressibleByIntegerLiteral {
    public init(integerLiteral integer: Int) {
        self.init(Double(integer))
    }
}
