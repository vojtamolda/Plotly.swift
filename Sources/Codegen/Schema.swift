
struct Schema: Decodable {

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
    let defs: Defs

    struct Trace: Decodable {
        let animatable: Bool
        let categories: [String]
        let meta: [String: String]
        let attributes: [String: Entry]
        let layoutAttributes: [String: Entry]?

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            animatable = try container.decode(Bool.self, forKey: Keys("animatable"))
            attributes = try container.decode([String: Entry].self, forKey: Keys("attributes"))
            layoutAttributes = try container.decodeIfPresent([String: Entry].self,
                                                             forKey: Keys("layoutAttributes"))
            meta = try container.decode([String: String].self, forKey: Keys("meta"))
            // There is an empty dict in 'traces/area' instead of a list like everywhere else.
            categories = (try? container.decode([String].self, forKey: Keys("categories"))) ?? []
        }
    }
    let traces: [String: Trace]

    struct Layout: Decodable {
        let layoutAttributes: [String: Entry]
    }
    let layout: Layout

    struct Transforms: Decodable {
        let aggregate: Transform
        let filter: Transform
        let groupby: Transform
        let sort: Transform

        struct Transform: Decodable {
            let attributes: [String: Entry]
        }
    }
    let transforms: Transforms

    struct Frames: Decodable {
        struct Items: Decodable {
            let frames_entry: [String: Entry]
        }
        let items: Items
    }
    let frames: Frames

    let animation: [String: Entry]

    let config: [String: Entry]


    // MARK: - Data Types

    enum Entry: Decodable {
        case primitive(_ primitive: Primitive)
        case attribute(_ attribute: Attribute)
        case entries(_ entries: [String: Entry])

        static let ignoredKeys: Set = ["_isSubplotObj", "_isLinkedToArray", "_arrayAttrRegexps"]

        init(from decoder: Decoder) throws {
            if let primitive = try? Primitive.init(from: decoder) {
                self = .primitive(primitive)
            } else if let attribute = try? Attribute.init(from: decoder) {
                self = .attribute(attribute)
            } else {
                let container = try decoder.container(keyedBy: Keys.self)
                var entries = [String: Entry]()
                for key in container.allKeys {
                    if Self.ignoredKeys.contains(key.stringValue) { continue }
                    let entry = try Entry(from: container.superDecoder(forKey: key))
                    entries[key.stringValue] = entry
                }
                self = .entries(entries)
            }
        }
    }

    enum Primitive: Decodable {
        case none
        case bool(_ bool: Bool)
        case int(_ int: Int)
        case double(_ double: Double)
        case string(_ string: String)

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

        func toString() -> String {
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
    }

    enum Attribute: Decodable {

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

        struct Angle: SchemaDataType {
            var codingPath: [CodingKey] = []
            let valType: String
            let description: String?
            let editType: String?
            let role: String?

            let dflt: Double? = nil

            enum CodingKeys: String, CodingKey {
                case valType, description, editType, role, dflt
            }
        }
        case angle(_ angle: Angle)

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

        struct FlagList: SchemaDataType {
            var codingPath: [CodingKey] = []
            let valType: String
            let description: String?
            let editType: String?
            let role: String?

            let flags: [String]
            let dflt: [String]? = nil
            let extras: [Primitive]? = nil
            let arrayOk: Bool? = nil

            enum CodingKeys: String, CodingKey {
                case valType, description, editType, role, flags, dflt, extras, arrayOk
            }
        }
        case flagList(_ flagList: FlagList)

        struct Any_: SchemaDataType {
            var codingPath: [CodingKey] = []
            let valType: String
            let description: String?
            let editType: String?
            let role: String?

            let dflt: Primitive? = nil
            let values: [Primitive]? = nil
            let arrayOk: Bool? = nil

            enum CodingKeys: String, CodingKey {
                case valType, description, editType, role, dflt, values, arrayOk
            }
        }
        case any(_ any: Any_)

        struct InfoArray: SchemaDataType {
            var codingPath: [CodingKey] = []
            let valType: String
            let description: String?
            let editType: String?
            let role: String?

            let items: [Primitive] = []
            let dflt: [Primitive]? = nil
            let freeLength: Bool? = nil
            let dimensions: Primitive? = nil

            enum CodingKeys: String, CodingKey {
                case valType, description, editType, role, items, dflt, freeLength, dimensions
            }
        }
        case infoArray(_ infoArray: InfoArray)

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            let valType = try container.decode(String.self, forKey: Keys("valType"))

            switch valType {
            case "data_array":
                let dataArray = try! DataArray.init(parse: decoder)
                self = .dataArray(dataArray)
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
                self = .any(try! Any_.init(parse: decoder))
            case "info_array":
                self = .infoArray(try! InfoArray.init(parse: decoder))
            default:
                fatalError("Unsupported attribute kind: \(valType)")
            }
        }
    }

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


protocol SchemaDataType: Decodable {
    var codingPath: [CodingKey] { get set }
    var valType: String { get }
    var description: String? { get }
    var editType: String? { get }
    var role: String? { get }
}

extension SchemaDataType {
    init(parse decoder: Decoder) throws {
        try self.init(from: decoder)
        self.codingPath = decoder.codingPath
    }

    var path: String { codingPath.map { $0.stringValue }.joined(separator: "/") }
}
