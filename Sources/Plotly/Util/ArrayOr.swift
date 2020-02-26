
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


// TODO: Docs
public enum ArrayOrColor: Encodable {
    case value(Color)
    case array([Double])
    case colors([Color])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let value):
            try container.encode(value)
        case .array(let array):
            try container.encode(array)
        case .colors(let colors):
            try container.encode(colors)
        }
    }
}
extension ArrayOrColor: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Double

    public init(arrayLiteral: Double...) {
        self = .array(arrayLiteral)
    }
}
extension ArrayOrColor: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = UInt32

    public init(integerLiteral value: UInt32) {
        self = .value(.value(value))
    }
}


// TODO: Docs
public enum ArrayOrAnything: Encodable {
    case value(Anything)
    case array([Anything])

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
