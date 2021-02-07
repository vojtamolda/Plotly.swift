
/// A predefined data type that is used to decode Plotly JSON schema.
protocol PredefinedType: PathDecodable {
    var valType: String { get }
    var description: String? { get }
    var editType: String? { get }
    var role: String? { get }
}


/// An enum functioning as a container for predefined data types.
///
/// When the Plotly schema is decoded from JSON it is represented as a hierarchy built from these
/// structs. Original blueprints reside in `/defs/valObjects/*`, but the types had to be manually
/// re-implemented to ensure the type safety Swift requires.
///
/// - Warning: Any change, like an addition or altering of a data type in the schema require a
/// manual change of the corresponding type here.
enum Predefined {

    /// Ordered, nested decoding container consisting of other decoded entries.
    ///
    /// - Note: Order of nested members is based on reading `Order.json` file because Swift
    /// Dictionaries and JSONParser can't guarantee persistent ordering before and after decoding.
    struct Object: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String = "object"
        let description: String?
        let editType: String?
        let role: String?

        var entries: [(identifier: String, entry: Schema.Entry)] = []

        static private let ignored: Set = ["_isSubplotObj", "_isLinkedToArray", "_arrayAttrRegexps"]

        init(from decoder: Decoder) throws {
            codingPath = decoder.codingPath

            let container = try decoder.container(keyedBy: Schema.Keys.self)
            description = try container.decodeIfPresent(String.self, forKey: Schema.Keys("description"))
            editType = try container.decodeIfPresent(String.self, forKey: Schema.Keys("editType"))
            role = try container.decodeIfPresent(String.self, forKey: Schema.Keys("role"))

            for key in container.allKeys {
                if Self.ignored.contains(key.stringValue) { continue }

                let entry = try Schema.Entry(from: container.superDecoder(forKey: key))
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

    /// Decoded Plotly schema attribute of type `data_array`.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/data_array`.
    struct DataArray: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: [Schema.Primitive]?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema attribute of type `enumerated`.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/enumerated`.
    struct Enumerated: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let values: [Schema.Primitive]
        let coerceNumber: Schema.Primitive?
        let dflt: Schema.Primitive?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, values, coerceNumber, dflt, arrayOk
        }
    }

    /// Decoded Plotly schema `boolean` attribute.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/boolean`.
    struct Boolean: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema `number` attribute.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/number`.
    struct Number: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Schema.Primitive?
        let min: Double?
        let max: Double?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, min, max, arrayOk
        }
    }

    /// Decoded Plotly schema `integer` attribute.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/integer`.
    struct Integer: PredefinedType {
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
    ///
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    /// - Remark: Properties originate from `/defs/valObjects/string`.
    struct String_: PredefinedType {
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
    ///
    /// - Remark: Properties originate from `/defs/valObjects/color`.
    struct Color: PredefinedType {
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
    ///
    /// - Remark: Properties originate from `/defs/valObjects/colorlist`.
    struct ColorList: PredefinedType {
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
    ///
    /// - Remark: Properties originate from `/defs/valObjects/colorscale`.
    struct ColorScale: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: [[Schema.Primitive]]?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema attribute of type `angle`.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/angle`.
    struct Angle: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Schema.Primitive?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt
        }
    }

    /// Decoded Plotly schema attribute of type `subplotid`.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/subplotid`.
    struct SubplotID: PredefinedType {
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
    ///
    /// - Remark: Properties originate from `/defs/valObjects/flaglist`.
    struct FlagList: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let flags: [String]
        let dflt: String?
        let extras: [Schema.Primitive]?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, flags, dflt, extras, arrayOk
        }
    }

    /// Decoded Plotly schema attribute of type `any`.
    ///
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    /// - Remark: Properties originate from `/defs/valObjects/any`.
    struct Any_: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let dflt: Schema.Primitive? = nil
        let values: [Schema.Primitive]?
        let arrayOk: Bool?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, dflt, values, arrayOk
        }
    }

    /// Decoded Plotly schema attribute of type `info_array`.
    ///
    /// - Remark: Properties originate from `/defs/valObjects/info_array`.
    struct InfoArray: PredefinedType {
        var codingPath: [CodingKey] = []

        let valType: String
        let description: String?
        let editType: String?
        let role: String?

        let items: [Schema.Primitive] = []
        let dflt: [Schema.Primitive]?
        let freeLength: Bool?
        let dimensions: Schema.Primitive?

        enum CodingKeys: String, CodingKey {
            case valType, description, editType, role, items, dflt, freeLength, dimensions
        }
    }
}


/// An decodable object that remembers the coding path of the container it originates from.
protocol PathDecodable: Decodable {
    var name: String { get }
    var codingPath: [CodingKey] { get set }
}

extension PathDecodable {
    var name: String { codingPath.last!.stringValue }
    var path: String { codingPath.map { $0.stringValue }.joined(separator: "/") }

    /// Default implementation that stores the coding path of the decoder.
    init(parse decoder: Decoder) throws {
        try self.init(from: decoder)
        codingPath = decoder.codingPath
    }
}
