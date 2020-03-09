
// TODO: Docs
public enum InfoArray: Encodable {
    case numeric([Double])
    case string([String])
    case nested([InfoArray])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .numeric(let numerals):
            try container.encode(numerals)
        case .string(let strings):
            try container.encode(strings)
        case .nested(let infoArrays):
            try container.encode(infoArrays)
        }
    }
}


extension InfoArray: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Double

    public init(arrayLiteral array: Double...) {
        self = .numeric(array)
    }
}
