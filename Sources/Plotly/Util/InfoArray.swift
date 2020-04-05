import Foundation


/// A representation of an arbitrary JSON value.
///
/// This is a bit more useful than the naive `[String:Any]` type for JSON values, since it makes sure
/// only valid JSON values are present.
public enum InfoArray: Encodable {
    case null
    case bool(Bool)
    case int(Int)
    case double(Double)
    case string(String)
    case array([InfoArray])
    case object([String: InfoArray])

    /// Create a JSON value from arbitrary type.
    public init(_ value: Any) {
        switch value {
        case let null as Optional<Any> where null == nil:
            self = .null
        case let bool as Bool:
            self = .bool(bool)
        case let int as Int:
            self = .int(int)
        case let double as Double:
            self = .double(double)
        case let string as String:
            self = .string(string)
        case let array as [Any]:
            self = .array(array.map(InfoArray.init))
        case let dict as [String: Any]:
            self = .object(dict.mapValues(InfoArray.init))
        default:
            fatalError("Data type is not supported in JSON")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .null:
            try container.encodeNil()
        case let .bool(bool):
            try container.encode(bool)
        case let .int(int):
            try container.encode(int)
        case let .double(double):
            try container.encode(double)
        case let .string(string):
            try container.encode(string)
        case let .array(array):
            try container.encode(array)
        case let .object(object):
            try container.encode(object)
        }
    }
}

extension InfoArray: CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case .null:
            return "null"
        case .bool(let bool):
            return bool.description
        case .int(let int):
            return int.description
        case .double(let double):
            return double.debugDescription
        case .string(let string):
            return string.debugDescription
        default:
            let encoder = JSONEncoder()
            encoder.outputFormatting = [.prettyPrinted]
            return try! String(data: encoder.encode(self), encoding: .utf8)!
        }
    }
}


extension InfoArray: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self = .null
    }
}
extension InfoArray: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: Bool) {
        self = .bool(value)
    }
}
extension InfoArray: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = .int(value)
    }
}
extension InfoArray: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self = .double(value)
    }
}
extension InfoArray: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = .string(value)
    }
}
extension InfoArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: InfoArray...) {
        self = .array(elements)
    }
}
extension InfoArray: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (String, InfoArray)...) {
        var object: [String:InfoArray] = [:]
        for (key, value) in elements {
            object[key] = value
        }
        self = .object(object)
    }
}
