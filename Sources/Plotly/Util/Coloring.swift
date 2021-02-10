
/// Constant or variable coloring of a property.
public enum Coloring {

    /// Coloring by a single, constant color.
    case constant(_ color: Color)

    /// Variable coloring specified by the provided collection of `colors`.
    case variable(_ colors: [Color])

    /// Coloring by numerical values with colors derived from the associated `ColorScale`.
    case colorScale(_ values: [Double])
}

extension Coloring: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .constant(let constant):
            try container.encode(constant)
        case .variable(let colors):
            try container.encode(colors)
        case .colorScale(let values):
            try container.encode(values)
        }
    }
}

extension Coloring: ExpressibleByIntegerLiteral {
    public init(integerLiteral integer: UInt32) {
        self = .constant(Color(integerLiteral: integer))
    }
}

extension Coloring: ExpressibleByArrayLiteral {
    public init(arrayLiteral values: Double...) {
        self = .colorScale(values)
    }
}
