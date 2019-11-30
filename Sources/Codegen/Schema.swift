
struct Schema: Decodable {

    struct Defs: Decodable {
        struct Datatype: Decodable {
            let description: String
            let requiredOpts: [String]
            let otherOpts: [String]
        }
        let valObjects: [String: Datatype]
        let editType: [String: Attribute]
        let metaKeys: [String]
        let impliedEdits: [String: Primitive]
    }
    let defs: Defs

    struct Trace: Decodable {
        let type: String
        let animatable: Bool
        let categories: [String]
        let meta: [String: String]
        let attributes: [String: Entry]
        let layoutAttributes: [String: Entry]?

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            type = try container.decode(String.self, forKey: Keys("type"))
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
        let layoutAttributes: [String: Entry]?
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
        class Common: Decodable {
            var valType: String
            var description: String = ""
            var editType: String? = nil
            var role: String? = nil
            var codingPath: [CodingKey]

            required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: Keys.self)
                valType = try container.decode(String.self, forKey: Keys("valType"))
                description = (try container.decodeIfPresent(String.self, forKey: Keys("description"))) ?? ""
                editType = try container.decodeIfPresent(String.self, forKey: Keys("editType"))
                role = try container.decodeIfPresent(String.self, forKey: Keys("role"))
                codingPath = container.codingPath
            }
        }

        class DataArray: Common {
            let dflt: Primitive? = nil
        }
        case dataArray(_ dataArray: DataArray)

        class Enumerated: Common {
            let values: [Primitive] = []
            let coerceNumber: Bool? = nil
            let dflt: [Primitive]? = nil
            let arrayOk: Bool? = nil
        }
        case enumerated(_ enumerated: Enumerated)

        class Boolean: Common {
            let dflt: Bool? = nil
        }
        case boolean(_ boolean: Boolean)
        
        class Number: Common {
            let dflt: Double? = nil
            let min: Double? = nil
            let max: Double? = nil
            let arrayOk: Bool? = nil
        }
        case number(_ number: Number)

        class Integer: Common {
            let dflt: Int? = nil
            let min: Int? = nil
            let max: Int? = nil
            let arrayOk: Bool? = nil
        }
        case integer(_ integer: Integer)

        class String_: Common {
            let dflt: String? = nil
            let noBlank: Bool? = nil
            let strict: Bool? = nil
            let values: [String]? = nil
            let arrayOk: Bool? = nil
        }
        case string(_ string: String_)

        class Color: Common {
            let dflt: String? = nil
            let arrayOk: Bool? = nil
        }
        case color(_ color: Color)
        
        class ColorList: Common {
            let dflt: String? = nil
        }
        case colorList(_ colorList: ColorList)
        
        class ColorScale: Common {
            let dflt: String? = nil
        }
        case colorScale(_ colorScale: ColorScale)
        
        class Angle: Common {
            let dflt: Double? = nil
        }
        case angle(_ angle: Angle)
        
        class SubplotID: Common {
            let dflt: String = ""
            let regex: String? = nil
        }
        case subplotID(_ subplotID: SubplotID)

        class FlagList: Common {
            let flags: [String] = []
            let dflt: [String]? = nil
            let extras: [Primitive]? = nil
            let arrayOk: Bool? = nil
        }
        case flagList(_ flagList: FlagList)

        class Any_: Common {
            let dflt: Primitive? = nil
            let values: [Primitive]? = nil
            let arrayOk: Bool? = nil
        }
        case any(_ any: Any_)

        class InfoArray: Common {
            let items: [Primitive] = []
            let dflt: [Primitive]? = nil
            let freeLength: Bool? = nil
            let dimensions: Primitive? = nil
        }
        case infoArray(_ infoArray: InfoArray)

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            let valType = try container.decode(String.self, forKey: Keys("valType"))

            switch valType {
            case "data_array":
                self = .dataArray(try! DataArray.init(from: decoder))
            case "enumerated":
                self = .enumerated(try! Enumerated.init(from: decoder))
            case "boolean":
                self  = .boolean(try! Boolean.init(from: decoder))
            case "number":
                self = .number(try! Number.init(from: decoder))
            case "integer":
                self = .integer(try! Integer.init(from: decoder))
            case "string":
                self = .string(try! String_.init(from :decoder))
            case "color":
                self = .color(try! Color.init(from: decoder))
            case "colorlist":
                self = .colorList(try! ColorList.init(from: decoder))
            case "colorscale":
                self = .colorScale(try! ColorScale.init(from: decoder))
            case "angle":
                self = .angle(try! Angle.init(from: decoder))
            case "subplotid":
                self = .subplotID(try! SubplotID.init(from: decoder))
            case "flaglist":
                self = .flagList(try! FlagList.init(from: decoder))
            case "any":
                self = .any(try! Any_.init(from: decoder))
            case "info_array":
                self = .infoArray(try! InfoArray.init(from: decoder))
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
