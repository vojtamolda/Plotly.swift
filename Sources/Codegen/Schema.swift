
/// Container for Swift structs that map onto objects in Plotly JSON schema hierarchy.
/// - SeeAlso: Decodable
struct Schema: Decodable {

    /// Workaround to sort `Entries` in the same order as the Plotly schema.
    static var order: Order? = nil

    // MARK: - Schema Content

    /// Representation of `/defs` key in the Plotly schema.
    /// - Warning: The entire `/defs/*` subtree and especially the`ValObjects` data type
    /// specifications are ignored. Type information stored here is implicitly coded into the way different
    /// cases of the `Attribute` decoding. Any change, or a new data type require a manual change
    /// of the decoding process.
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

    /// Specification of the allowed `trace` attributes.
    struct Trace: Decodable {
        let type: String
        let animatable: Bool
        let categories: [String]
        let meta: [String: String]
        let attributes: Entries
        let layoutAttributes: Entries?

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            type = try container.decode(String.self, forKey: Keys("type"))
            animatable = try container.decode(Bool.self, forKey: Keys("animatable"))
            attributes = try container.decode(Entries.self, forKey: Keys("attributes"))
            layoutAttributes = try container.decodeIfPresent(Entries.self,
                                                        forKey: Keys("layoutAttributes"))
            meta = try container.decode([String: String].self, forKey: Keys("meta"))
            // There is an empty dict in 'traces/area' instead of a list like everywhere else.
            categories = (try? container.decode([String].self, forKey: Keys("categories"))) ?? []
        }
    }
    /// A dictionary of decoded  attributes of `trace` object for each supported chart type in the Plotly schema.
    /// - Remark: Keys of the dictionary match  names from `traces/*/`.
    let traces: [String: Trace]

    /// Specification of the allowed `layout` attributes.
    struct Layout: Decodable {
        let layoutAttributes: Entries
    }
    /// Decoded `layout` object attributes.
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
            let frames_entry: Entries
        }
        let items: Items
    }
    let frames: Frames

    // FIXME: Animation is currently not used.
    let animation: Entries

    /// Decoded `config` attributes allowed in the schema.
    let config: Entries

    // MARK: - Schema Data Types

    /// Basic decoding block (i.e. primitive, typed attribute or nested sub-entries) of the Plotly JSON schema hierarchy.
    enum Entry: Decodable {
        case primitive(_ primitive: Primitive)
        case attribute(_ attribute: Attribute)
        case entries(_ entries: Entries)

        init(from decoder: Decoder) throws {
            if let primitive = try? Primitive.init(from: decoder) {
                self = .primitive(primitive)
            } else if let attribute = try? Attribute.init(from: decoder) {
                self = .attribute(attribute)
            } else if let entries = try? Entries.init(from: decoder) {
                self = .entries(entries)
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

        /// Decoded Plotly schema attribute of type `data_array`.
        /// - Remark: Fields originate from `defs/valObjects/data_array`.
        struct DataArray: SchemaDataType {
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
        case dataArray(_ dataArray: DataArray)

        /// Decoded  Plotly schema attribute of type `enumerated`.
        /// - Remark: Fields originate from `defs/valObjects/enumerated`.
        struct Enumerated: SchemaDataType {
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
        case enumerated(_ enumerated: Enumerated)

        /// Decoded Plotly schema `boolean` type.
        /// - Remark: Fields originate from `defs/valObjects/boolean`.
        struct Boolean: SchemaDataType {
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
        case boolean(_ boolean: Boolean)

        /// Decoded Plotly schema `number` type.
        /// - Remark: Fields originate from `defs/valObjects/number`.
        struct Number: SchemaDataType {
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
        case number(_ number: Number)

        /// Decoded Plotly schema `integer` type.
        /// - Remark: Fields originate from `defs/valObjects/integer`.
        struct Integer: SchemaDataType {
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
        case integer(_ integer: Integer)

        /// Decoded Plotly schema `string` type.
        /// - Note: Appended underscore prevents collision with the Swift built-in type.
        /// - Remark: Fields originate from `defs/valObjects/string`.
        struct String_: SchemaDataType {
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
        case string(_ string: String_)

        /// Decoded Plotly schema attribute of type `color`.
        /// - Remark: Fields originate from `defs/valObjects/color`.
        struct Color: SchemaDataType {
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
        case color(_ color: Color)

        /// Decoded Plotly schema attribute of type `colorlist`.
        /// - Remark: Fields originate from `defs/valObjects/colorlist`.
        struct ColorList: SchemaDataType {
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
        case colorList(_ colorList: ColorList)

        /// Decoded Plotly schema attribute of type `colorscale`.
        /// - Remark: Fields originate from `defs/valObjects/colorscale`.
        struct ColorScale: SchemaDataType {
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
        case colorScale(_ colorScale: ColorScale)

        /// Decoded Plotly schema attribute of type `angle`.
        /// - Remark: Fields originate from `defs/valObjects/angle`.
        struct Angle: SchemaDataType {
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
        case angle(_ angle: Angle)

        /// Decoded Plotly schema attribute of type `subplotid`.
        /// - Remark: Fields originate from `defs/valObjects/subplotid`.
        struct SubplotID: SchemaDataType {
            var codingPath: [CodingKey] = []
            let valType: String
            let description: String?
            let editType: String?
            let role: String?

            let dflt: String = ""
            let regex: String? = nil

            enum CodingKeys: String, CodingKey {
                case valType, description, editType, role, dflt, regex
            }
        }
        case subplotID(_ subplotID: SubplotID)

        /// Decoded Plotly schema attribute of type `flaglist`.
        /// - Remark: Fields originate from `defs/valObjects/flaglist`.
        struct FlagList: SchemaDataType {
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
        case flagList(_ flagList: FlagList)

        /// Decoded Plotly schema attribute of type `any`.
        /// - Note: Name Anything prevents collision with the Swift built-in type Any.
        /// - Remark: Fields originate from `defs/valObjects/any`.
        struct Anything: SchemaDataType {
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
        case anything(_ anything: Anything)

        /// Decoded Plotly schema attribute of type `info_array`.
        /// - Remark: Fields originate from `defs/valObjects/info_array`.
        struct InfoArray: SchemaDataType {
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
        case infoArray(_ infoArray: InfoArray)

        /// Creates a new attribute by pivoting on the `valType` value and decoding the correspoding Plotly schema data  type.
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            let valType = try container.decode(String.self, forKey: Keys("valType"))

            switch valType {
            case "data_array":
                self = .dataArray(try! DataArray.init(parse: decoder))
            case "enumerated":
                self = .enumerated(try! Enumerated.init(parse: decoder))
            case "boolean":
                self  = .boolean(try! Boolean.init(parse: decoder))
            case "number":
                self = .number(try! Number.init(parse: decoder))
            case "integer":
                self = .integer(try! Integer.init(parse: decoder))
            case "string":
                self = .string(try! String_.init(parse :decoder))
            case "color":
                self = .color(try! Color.init(parse: decoder))
            case "colorlist":
                self = .colorList(try! ColorList.init(parse: decoder))
            case "colorscale":
                self = .colorScale(try! ColorScale.init(parse: decoder))
            case "angle":
                self = .angle(try! Angle.init(parse: decoder))
            case "subplotid":
                self = .subplotID(try! SubplotID.init(parse: decoder))
            case "flaglist":
                self = .flagList(try! FlagList.init(parse: decoder))
            case "any":
                self = .anything(try! Anything.init(parse: decoder))
            case "info_array":
                self = .infoArray(try! InfoArray.init(parse: decoder))
            default:
                let path = String(reflecting: container)
                fatalError("Unsupported attribute data type '\(valType)' in '\(path)'")
            }
        }
    }

    /// Ordered, nested decoding container consisting of other decoded sub-entries.
    /// - Note: Order of nested members is based on reading `Order.json` file because Swift's Dictionaries and
    /// JSONParser don't maintain order.
    struct Entries: CodingPathDecodable {
        var codingPath: [CodingKey] = []
        var entries: [(identifier: String, entry: Entry)] = []

        static let ignoredKeys: Set = ["_isSubplotObj", "_isLinkedToArray", "_arrayAttrRegexps"]

        init(from decoder: Decoder) throws {
            codingPath = decoder.codingPath

            let container = try decoder.container(keyedBy: Keys.self)
            for key in container.allKeys {
                if Self.ignoredKeys.contains(key.stringValue) { continue }
                let entry = try Entry(from: container.superDecoder(forKey: key))
                entries += [(identifier: key.stringValue, entry: entry)]
            }
            Schema.order?.sorted(entries: &entries, at: decoder.codingPath)
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

// MARK: - Schema Data Type Protocols

/// An decodable object that remembers the coding path of the container it originates from.
protocol CodingPathDecodable: Decodable {
    /// Coding keys that form the path of the container where the object originates from.
    var codingPath: [CodingKey] { get set }
    /// Coding keys converted to String and separated with slashes.
    var decodingPath: String { get }

    /// Creates a new instance by decoding from the given decoder and stores the coding path of the decoder.
    init(parse decoder: Decoder) throws
}

/// Extension with default implementations that work well for JSON schemas.
extension CodingPathDecodable {
    var decodingPath: String { codingPath.map { $0.stringValue }.joined(separator: "/") }

    init(parse decoder: Decoder) throws {
        try self.init(from: decoder)
        self.codingPath = decoder.codingPath
    }
}

/// A data type decoded from Plotly JSON schema.
protocol SchemaDataType: CodingPathDecodable {
    var valType: String { get }
    var description: String? { get }
    var editType: String? { get }
    var role: String? { get }
}
