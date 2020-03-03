
/// Entire decoded Plotly JSON schema hierarchy.
struct Schema: Decodable {
    /// Storage of Plotly mangledtogethernames translated to Swift camelCaseNames for each identifier in the schema.
    static var name: Name? = nil
    /// Workaround to sort `Entries` in the same order as the Plotly schema.
    static var order: Order? = nil

    /// Representation of `/defs` key in the Plotly schema.
    ///
    /// - Warning: The entire `/defs/*` subtree and the`ValObjects` data type definitions are ignored.
    /// Knowledge about types stored here is used implicitly embedded in the `Predifined.*` structs.
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

    /// Specification of a chart type in the Plotly schema.
    struct Trace: Decodable {
        let type: String
        let animatable: Bool
        let categories: [String]
        let meta: [String: String]
        let attributes: Predefined.Object
        let layoutAttributes: Predefined.Object?

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            type = try container.decode(String.self, forKey: Keys("type"))
            animatable = try container.decode(Bool.self, forKey: Keys("animatable"))
            attributes = try container.decode(Predefined.Object.self, forKey: Keys("attributes"))
            layoutAttributes = try container.decodeIfPresent(Predefined.Object.self,
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
        let layoutAttributes: Predefined.Object
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
            let frames_entry: Predefined.Object
        }
        let items: Items
    }
    let frames: Frames

    // FIXME: Animation is currently not used.
    typealias Animation = Predefined.Object
    let animation: Animation

    /// Decoded `config/*` attributes.
    typealias Config = Predefined.Object
    let config: Config
}


/// This extension contains infrastructure-like helpers that allow for a strongly typed decoding of the schema.
extension Schema {
    /// Basic decoding block of the Plotly JSON schema hierarchy (i.e. primitive, typed attribute or nested object).
    enum Entry: Decodable {
        case primitive(_ primitive: Primitive)
        case attribute(_ attribute: Attribute)
        case object(_ object: Predefined.Object)

        init(from decoder: Decoder) throws {
            if let primitive = try? Primitive.init(from: decoder) {
                self = .primitive(primitive)
            } else if let attribute = try? Attribute.init(from: decoder) {
                self = .attribute(attribute)
            } else if let object = try? Predefined.Object.init(from: decoder) {
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
        case dataArray(_ dataArray: Predefined.DataArray)
        case enumerated(_ enumerated: Predefined.Enumerated)
        case boolean(_ boolean: Predefined.Boolean)
        case number(_ number: Predefined.Number)
        case integer(_ integer: Predefined.Integer)
        case string(_ string: Predefined.String_)
        case color(_ color: Predefined.Color)
        case colorList(_ colorList: Predefined.ColorList)
        case colorScale(_ colorScale: Predefined.ColorScale)
        case angle(_ angle: Predefined.Angle)
        case subplotID(_ subplotID: Predefined.SubplotID)
        case flagList(_ flagList: Predefined.FlagList)
        case any(_ any: Predefined.Any_)
        case infoArray(_ infoArray: Predefined.InfoArray)

        /// Creates a new attribute by pivoting on the `valType` value and decoding the correspoding Plotly schema data type.
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            let valType = try container.decode(String.self, forKey: Keys("valType"))

            switch valType {
            case "data_array":
                self = .dataArray(try Predefined.DataArray(parse: decoder))
            case "enumerated":
                self = .enumerated(try Predefined.Enumerated(parse: decoder))
            case "boolean":
                self  = .boolean(try Predefined.Boolean(parse: decoder))
            case "number":
                self = .number(try Predefined.Number(parse: decoder))
            case "integer":
                self = .integer(try Predefined.Integer(parse: decoder))
            case "string":
                self = .string(try Predefined.String_(parse :decoder))
            case "color":
                self = .color(try Predefined.Color(parse: decoder))
            case "colorlist":
                self = .colorList(try Predefined.ColorList(parse: decoder))
            case "colorscale":
                self = .colorScale(try Predefined.ColorScale(parse: decoder))
            case "angle":
                self = .angle(try Predefined.Angle(parse: decoder))
            case "subplotid":
                self = .subplotID(try Predefined.SubplotID(parse: decoder))
            case "flaglist":
                self = .flagList(try Predefined.FlagList(parse: decoder))
            case "any":
                self = .any(try Predefined.Any_(parse: decoder))
            case "info_array":
                self = .infoArray(try Predefined.InfoArray(parse: decoder))
            default:
                let path = String(reflecting: container)
                fatalError("Unsupported attribute data type '\(valType)' in '\(path)'")
            }
        }
    }

    /// Convenience type to allow ad-hoc construction of coding keys from strings.
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
