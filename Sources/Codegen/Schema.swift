
// MARK: Plotly Schema Data Type Protocols

/// An decodable object that remembers the coding path of the container it originates from.
protocol SchemaDecodable: Decodable {
    var name: String { get }
    var codingPath: [CodingKey] { get set }
}
extension SchemaDecodable {
    var name: String { codingPath.last!.stringValue }
    var path: String { codingPath.map { $0.stringValue }.joined(separator: "/") }

    /// Default implementation that stores the coding path of the decoder.
    init(parse decoder: Decoder) throws {
        try self.init(from: decoder)
        codingPath = decoder.codingPath
    }
}

/// A data type decoded from Plotly JSON schema.
protocol SchemaType: SchemaDecodable {
    var valType: String { get }
    var description: String? { get }
    var editType: String? { get }
    var role: String? { get }
}


// MARK: - Plotly Schema Content

/// Container for Swift structs that map onto objects in Plotly JSON schema hierarchy.
struct Schema: Decodable {
    /// Workaround to sort `Entries` in the same order as the Plotly schema.
    static var order: Order? = nil

    /// Representation of `/defs` key in the Plotly schema.
    /// - Warning: The entire `/defs/*` subtree and especially the`ValObjects` data type
    /// specifications are more or less ignored. Knowledge about types stored here is used implicitly
    /// to decode each case of the `Attribute`. Any change like an addition of a new data type
    /// require a manual change of the decoding process.
    struct Defs: Decodable {
        struct ValObject: Decodable {
            let description: String
            let requiredOpts: [String]
            let otherOpts: [String]
        }
        let valObjects: [String: ValObject]
        let editType: [String: Attribute]
        let metaKeys: [String]
        let impliedEdits: [String: Primitive]
    }
    /// Decoded keys and values located in the `/defs/*` Plotly schema subtree.
    let defs: Defs

    /// Specification of attributes for all supported chart types in the Plotly schema.
    struct Trace: Decodable {
        let type: String
        let animatable: Bool
        let categories: [String]
        let meta: [String: String]
        let attributes: Object
        let layoutAttributes: Object?

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            type = try container.decode(String.self, forKey: Keys("type"))
            animatable = try container.decode(Bool.self, forKey: Keys("animatable"))
            attributes = try container.decode(Object.self, forKey: Keys("attributes"))
            layoutAttributes = try container.decodeIfPresent(Object.self,
                                                             forKey: Keys("layoutAttributes"))
            meta = try container.decode([String: String].self, forKey: Keys("meta"))
            // There is an empty dict in '/traces/area' instead of a list like everywhere else.
            categories = (try? container.decode([String].self, forKey: Keys("categories"))) ?? []
        }
    }
    /// Ordered decoded collection of`/traces/*` sub-tree.
    struct Traces: Decodable {
        let all: [(String, Trace)]

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)

            var entries: [(identifier: String, entry: Trace)] = []
            for key in container.allKeys {
                let trace = try container.decode(Trace.self, forKey: key)
                entries.append((identifier: key.stringValue, entry: trace))
            }

            Schema.order!.sorted(entries: &entries, at: container.codingPath)
            all = entries.map { ($0.identifier, $0.entry) }
        }
    }
    let traces: Traces

    /// Specification of `/layout/*` subtree attributes.
    struct Layout: Decodable {
        let layoutAttributes: Object
    }
    /// Decoded `layout` object.
    let layout: Layout

    // FIXME: Transforms are currently not used.
    struct Transforms: Decodable {
        struct Transform: Decodable {
            let attributes: Entry
        }
        let aggregate: Transform
        let filter: Transform
        let groupby: Transform
        let sort: Transform
    }
    let transforms: Transforms

    // FIXME: Frames are currently not used.
    struct Frames: Decodable {
        struct Items: Decodable {
            let frames_entry: Object
        }
        let items: Items
    }
    let frames: Frames

    // FIXME: Animation is currently not used.
    let animation: Object

    /// Decoded `config/*` attributes.
    let config: Object


    // MARK: - Decoding Infrastructure

    /// Basic decoding block of the Plotly JSON schema hierarchy (i.e. primitive, typed attribute or nested object).
    enum Entry: Decodable {
        case primitive(_ primitive: Primitive)
        case attribute(_ attribute: Attribute)
        case object(_ object: Object)

        init(from decoder: Decoder) throws {
            if let primitive = try? Primitive.init(from: decoder) {
                self = .primitive(primitive)
            } else if let attribute = try? Attribute.init(from: decoder) {
                self = .attribute(attribute)
            } else if let object = try? Object.init(from: decoder) {
                self = .object(object)
            } else {
                let decodingPath = decoder.codingPath.map { $0.stringValue }.joined(separator: "/")
                fatalError("Unsupported entry type in '\(decodingPath)'")
            }
        }
    }

    /// Primitive data type (i.e. bool, int or string) that is generally found on the bottom level of the Plotly JSON schema hierarchy.
    enum Primitive: Decodable, CustomStringConvertible {
        case none
        case bool(_ bool: Bool)
        case int(_ int: Int)
        case double(_ double: Double)
        case string(_ string: String)

        var description: String {
            switch self {
            case .none:
                return "none"
            case .bool(let bool):
                return "\(bool)"
            case .int(let int):
                return "\(int)"
            case .double(let double):
                return "\(double)"
            case .string(let string):
                return string
            }
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if container.decodeNil() {
                self = .none
            } else if let bool = try? container.decode(Bool.self) {
                self = .bool(bool)
            } else if let int = try? container.decode(Int.self) {
                self = .int(int)
            } else if let double = try? container.decode(Double.self) {
                self = .double(double)
            } else {
                let string = try container.decode(String.self)
                self = .string(string)
            }
        }
    }

    /// Attribute data type from the Plotly JSON schema hierarchy with an associated data type.
    enum Attribute: Decodable {
        case dataArray(_ dataArray: Schema.DataArray)
        case enumerated(_ enumerated: Schema.Enumerated)
        case boolean(_ boolean: Schema.Boolean)
        case number(_ number: Schema.Number)
        case integer(_ integer: Schema.Integer)
        case string(_ string: Schema.String_)
        case color(_ color: Schema.Color)
        case colorList(_ colorList: Schema.ColorList)
        case colorScale(_ colorScale: Schema.ColorScale)
        case angle(_ angle: Schema.Angle)
        case subPlotId(_ subPlotId: Schema.SubPlotID)
        case flagList(_ flagList: Schema.FlagList)
        case any(_ any: Schema.Any_)
        case infoArray(_ infoArray: Schema.InfoArray)

        /// Creates a new attribute by pivoting on the `valType` value and decoding the correspoding Plotly schema data type.
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            let valType = try container.decode(String.self, forKey: Keys("valType"))

            switch valType {
            case "data_array":
                self = .dataArray(try Schema.DataArray(parse: decoder))
            case "enumerated":
                self = .enumerated(try Schema.Enumerated(parse: decoder))
            case "boolean":
                self  = .boolean(try Schema.Boolean(parse: decoder))
            case "number":
                self = .number(try Schema.Number(parse: decoder))
            case "integer":
                self = .integer(try Schema.Integer(parse: decoder))
            case "string":
                self = .string(try Schema.String_(parse :decoder))
            case "color":
                self = .color(try Schema.Color(parse: decoder))
            case "colorlist":
                self = .colorList(try Schema.ColorList(parse: decoder))
            case "colorscale":
                self = .colorScale(try Schema.ColorScale(parse: decoder))
            case "angle":
                self = .angle(try Schema.Angle(parse: decoder))
            case "subplotid":
                self = .subPlotId(try Schema.SubPlotID(parse: decoder))
            case "flaglist":
                self = .flagList(try Schema.FlagList(parse: decoder))
            case "any":
                self = .any(try Schema.Any_(parse: decoder))
            case "info_array":
                self = .infoArray(try Schema.InfoArray(parse: decoder))
            default:
                let path = String(reflecting: container)
                fatalError("Unsupported attribute data type '\(valType)' in '\(path)'")
            }
        }
    }

    /// Ordered, nested decoding container consisting of other decoded entries.
    /// - Note: Order of nested members is based on reading `Order.json` file because Swift
    /// Dictionaries and JSONParser can't guarantee persistent ordering before and after decoding.
    struct Object: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String = "object"
        let description: String?
        let editType: String?
        let role: String?

        var entries: [(identifier: String, entry: Entry)] = []

        static private let ignored: Set = ["_isSubplotObj", "_isLinkedToArray", "_arrayAttrRegexps"]

        init(from decoder: Decoder) throws {
            codingPath = decoder.codingPath

            let container = try decoder.container(keyedBy: Keys.self)
            description = try container.decodeIfPresent(String.self, forKey: Keys("description"))
            editType = try container.decodeIfPresent(String.self, forKey: Keys("editType"))
            role = try container.decodeIfPresent(String.self, forKey: Keys("role"))

            for key in container.allKeys {
                if Self.ignored.contains(key.stringValue) { continue }

                let entry = try Entry(from: container.superDecoder(forKey: key))
                entries += [(identifier: key.stringValue, entry: entry)]
            }

            Schema.order?.sorted(entries: &entries, at: decoder.codingPath)
        }

        init() {
            description = nil
            editType = nil
            role = nil
        }
    }


    // MARK: - Data Types

    /// Decoded Plotly schema attribute of type `data_array`.
    /// - Remark: Properties originate from `/defs/valObjects/data_array`.
    struct DataArray: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: [Primitive]?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded  Plotly schema attribute of type `enumerated`.
    /// - Remark: Properties originate from `/defs/valObjects/enumerated`.
    struct Enumerated: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let values: [Primitive]
        let coerceNumber: Primitive?
        let dflt: Primitive?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, values, coerceNumber, dflt, arrayOk
        }
    }

    /// Decoded Plotly schema `boolean` attribute.
    /// - Remark: Properties originate from `/defs/valObjects/boolean`.
    struct Boolean: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Bool? = nil

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema `number` attribute.
    /// - Remark: Properties originate from `/defs/valObjects/number`.
    struct Number: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Primitive?
        let min: Double?
        let max: Double?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, min, max, arrayOk
        }
    }

    /// Decoded Plotly schema `integer` attribute.
    /// - Remark: Properties originate from `/defs/valObjects/integer`.
    struct Integer: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Int?
        let min: Int?
        let max: Int?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, min, max, arrayOk
        }
    }

    /// Decoded Plotly schema `string` attribute.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    /// - Remark: Properties originate from `/defs/valObjects/string`.
    struct String_: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: String?
        let noBlank: Bool?
        let strict: Bool?
        let values: [String]?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, noBlank, strict, values, arrayOk
        }
    }

    /// Decoded Plotly schema attribute of type `color`.
    /// - Remark: Properties originate from `/defs/valObjects/color`.
    struct Color: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: String?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, arrayOk
        }
    }

    /// Decoded Plotly schema attribute of type `colorlist`.
    /// - Remark: Properties originate from `/defs/valObjects/colorlist`.
    struct ColorList: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: [String]?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema attribute of type `colorscale`.
    /// - Remark: Properties originate from `/defs/valObjects/colorscale`.
    struct ColorScale: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: [[Primitive]]?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema attribute of type `angle`.
    /// - Remark: Properties originate from `/defs/valObjects/angle`.
    struct Angle: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Primitive?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema attribute of type `subplotid`.
    /// - Remark: Properties originate from `/defs/valObjects/subplotid`.
    struct SubPlotID: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: String?
        let regex: String?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, regex
        }
    }

    /// Decoded Plotly schema attribute of type `flaglist`.
    /// - Remark: Properties originate from `/defs/valObjects/flaglist`.
    struct FlagList: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let flags: [String]
        let dflt: String?
        let extras: [Primitive]?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, flags, dflt, extras, arrayOk
        }
    }

    /// Decoded Plotly schema attribute of type `any`.
    /// - Remark: Properties originate from `/defs/valObjects/any`.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct Any_: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Primitive? = nil  // FIXME: Dictionary in some cases
        let values: [Primitive]?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, values, arrayOk
        }
    }

    /// Decoded Plotly schema attribute of type `info_array`.
    /// - Remark: Properties originate from `/defs/valObjects/info_array`.
    struct InfoArray: SchemaType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let items: [Primitive] = []  // FIXME: Dictionary in some cases
        let dflt: [Primitive]?
        let freeLength: Bool?
        let dimensions: Primitive?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, items, dflt, freeLength, dimensions
        }
    }


    /// Convenience type to allow ad-hoc  key construction from string literals.
    struct Keys: CodingKey {
        var intValue: Int?
        var stringValue: String

        init(intValue: Int) {
            self.intValue = intValue
            self.stringValue = "\(intValue)"
        }
        init(stringValue: String) {
            self.stringValue = stringValue
        }
        init(_ stringValue: String) {
            self.init(stringValue: stringValue)
        }
    }
}
