
/// Root level of _Plotly_ JSON schema hierarchy.
struct Schema: Decodable {

    // MARK: - Top Level Attributes

    struct Defs: Decodable {
        /// Static data types.
        let valObjects: [String: Datatype]
        /// Keys with special meaning
        let metaKeys: [String]
    }
    /// Definition of data types used in the schema and keys with a special (meta) semantics.
    let defs: Defs

    typealias Traces = [String: Trace]
    /// Trace (a chart type) definition from the schema.
    let traces: Traces

    struct Layout: Decodable {
        let layoutAttributes: [String: Attribute]?
    }
    /// Layout of the entire figure applied to all traces.
    let layout: Layout

    struct Transforms: Decodable {
        let aggregate: Transform
        let filter: Transform
        let groupby: Transform
        let sort: Transform

        struct Transform: Decodable {
            let attributes: [String: Attribute]
        }
    }
    /// Transformation applied to trace data.
    let transforms: Transforms

    struct Frames: Decodable {
        let items: Items

        struct Items: Decodable {
            let frames_entry: [String: Attribute]
        }
    }
    /// Frames are used to compose animations.
    let frames: Frames

    typealias Animation = [String: Attribute]
    /// Animation execution properties.
    let animation: Animation

    typealias Config = [String: Attribute]
    /// UI, locale and server configuration options.
    let config: Config


    // MARK: - Data Types
    
    struct Datatype: Decodable {
        let description: String
        let requiredOpts: [String]
        let otherOpts: [String]
    }

    enum Primitive: Decodable {
        case int(_ int: Int)
        case bool(_ bool: Bool)
        case string(_ string: String)
        case unknown

        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()

            if let int = try? container.decode(Int.self) {
                self = .int(int)
            } else if let bool = try? container.decode(Bool.self) {
                self = .bool(bool)
            } else if let string = try? container.decode(String.self) {
                self = .string(string)
            } else {
                self = .unknown
            }
        }
    }

    struct Attribute: Decodable {
        let object: Object?
        let description: String
        let valType: String?
        let values: [Primitive]?
        let dflt: Primitive?

        enum CodingKeys: String, CodingKey {
            case description
            case valType
            case values
            case dflt
            case role
        }

        init(from decoder: Decoder) throws {
            if let container = try? decoder.container(keyedBy: CodingKeys.self) {
                if try! container.decodeIfPresent(String.self, forKey: .role) == "object" {
                    object = try? Object(from: decoder)
                    description = ""
                    valType = nil
                    values = nil
                    dflt = nil
                    return
                }

                object = nil
                description = try container.decodeIfPresent(String.self, forKey: .description) ?? ""
                valType = try container.decodeIfPresent(String.self, forKey: .valType)
                values = try container.decodeIfPresent([Primitive].self, forKey: .values)
                dflt = try container.decodeIfPresent(Primitive.self, forKey: .dflt)
            } else {
                // Temporart fix for values like ["type": "scatter"] mixed in between attributes.
                object = nil
                description = ""
                valType = nil
                values = nil
                dflt = nil
            }
        }
    }


    struct Object: Decodable {
        var attributes: [String: Attribute]
        let meta: [String: String]
        let description: String

        private struct StringKey: CodingKey {
            var stringValue: String
            var intValue: Int?
            init?(stringValue: String) { self.stringValue = stringValue }
            init?(intValue: Int) {
                self.intValue = intValue
                stringValue = "\(intValue)"
            }
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringKey.self)
            precondition(container.contains(StringKey(stringValue: "role")!))

            attributes = [:]
            for key in container.allKeys {
                let attribute = try Attribute(from: container.superDecoder(forKey: key))
                attributes[key.stringValue] = attribute
            }
            meta = [:]
            description = ""
        }
    }

    
    struct Trace: Decodable {
        let type: String
        let animatable: Bool
        let categories: [String]
        let meta: [String: String]
        let attributes: [String: Attribute]
        let layoutAttributes: [String: Attribute]?
        
        var description: String {
            get { meta["description"] ?? "" }
        }

        enum CodingKeys: String, CodingKey {
            case type
            case animatable
            case categories
            case meta
            case attributes
            case layoutAttributes
        }
        
        init(from decoder: Decoder) throws {
            // Fuckers put empty dict in 'area'
            let container = try decoder.container(keyedBy: CodingKeys.self)
            type = try container.decode(String.self, forKey: .type)
            animatable = try container.decode(Bool.self, forKey: .animatable)
            attributes = try container.decode([String: Attribute].self, forKey: .attributes)
            layoutAttributes = try container.decodeIfPresent([String: Attribute].self, forKey: .layoutAttributes)

            if decoder.codingPath.joined(separator: "/").starts(with: "traces/area") {
                // Sombody put empty dicts here instead of lists like everywhere else.
                meta = [String: String]()
                categories = [String]()
            } else {
                meta = try container.decode([String: String].self, forKey: .meta)
                categories = try container.decode([String].self, forKey: .categories)
            }
        }
    }
}
