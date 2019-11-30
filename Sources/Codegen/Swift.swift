
struct Swift {

    struct DataArray: SwiftDataType {
        let type: String = "[Double]"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Enumerated: SwiftDataType {
        let type: String
        let identifier: String
        let schema: SchemaDataType?

        init(identifier: String, schema: Schema.Attribute.Enumerated) {
            self.type = identifier.camelCased()
            self.identifier = identifier
            self.schema = schema
        }

        func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["enum \(type) {"]
            for value in (schema as! Schema.Attribute.Enumerated).values {
                lines += ["case \(value.toString())"].indented()
            }
            lines += ["}"]
            return lines
        }
    }

    struct Boolean: SwiftDataType {
        let type: String = "Bool"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Number: SwiftDataType {
        let type: String = "Double"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Integer: SwiftDataType {
        let type: String = "Int"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct String_: SwiftDataType {
        let type: String = "String"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Color: SwiftDataType {
        let type: String = "Color"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct ColorList: SwiftDataType {
        let type: String = "ColorList"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct ColorScale: SwiftDataType {
        let type: String = "ColorScale"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Angle: SwiftDataType {
        let type: String = "Angle"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct SubplotID: SwiftDataType {
        let type: String = "SubplotID"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct FlagList: SwiftDataType {
        let type: String
        let identifier: String
        let schema: SchemaDataType?

        init(identifier: String, schema: Schema.Attribute.FlagList) {
            self.type = identifier.camelCased()
            self.identifier = identifier
            self.schema = schema
        }

        func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["struct \(type): OptionSet, Encodable {"]
            lines += ["let rawValue: Int"].indented()
            lines += [""]
            for (i, flag) in (schema as! Schema.Attribute.FlagList).flags.enumerated() {
                lines += ["static let \(flag) = \(type)(rawValue: 1 << \(i))"].indented()
            }
            lines += [""]
            lines += ["init(rawValue: Int) { self.rawValue = rawValue }"].indented()
            lines += [""]
            lines += ["func encode(to encoder: Encoder) throws {"].indented()
            lines += ["var options = [String]()"].indented(2)
            for (i, flag) in (schema as! Schema.Attribute.FlagList).flags.enumerated() {
                lines += ["if (self.rawValue & 1 << \(i)) != 0 { options += [\(flag)] }"].indented(2)
            }
            lines += ["var container = encoder.singleValueContainer()"].indented(2)
            lines += ["try container.encode(options.joined(separator: \"+\"))"].indented(2)
            lines += ["}"].indented()
            lines += ["}"]
            return lines
        }
    }

    struct Any_: SwiftDataType {
        let type: String = "Any"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct InfoArray: SwiftDataType {
        let type: String = "InfoArray"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Struct: SwiftDataType {
        let type: String
        let identifier: String
        let schema: SchemaDataType? = nil

        let entries: [String: Schema.Entry]
        var members: [String: SwiftDataType]
        var primitives: [String: Schema.Primitive]

        var description: String {
            if entries["description"] == nil {
                return ""
            }
            if case let Schema.Entry.primitive(primitive) = entries["description"]! {
                return primitive.toString()
            } else {
                return ""
            }
        }

        init(identifier: String, entries: [String: Schema.Entry]) {
            self.type = identifier.camelCased()
            self.identifier = identifier

            self.entries = entries
            self.primitives = [:]
            self.members = [:]

            for (identifier, entry) in entries {
                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    let datatype = createDataType(identifier: identifier, from: attribute)
                    members[identifier] = datatype
                case .entries(let entries):
                    let datatype = Self(identifier: identifier, entries: entries)
                    members[identifier] = datatype
                }
            }
        }

        func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["struct \(self.type) {"]
            for (identifier, datatype) in members {
                lines += datatype.definition().indented()
                lines += datatype.instance(withIdentifier: identifier).indented()
                lines += [""]
            }
            lines += ["}"]
            return lines
        }
    }

    static func createDataType(identifier: String, from attribute: Schema.Attribute) -> SwiftDataType {
        switch attribute {
        case .dataArray(let dataArray):
            return DataArray(identifier: identifier, schema: dataArray)
        case .enumerated(let enumerated):
            return Enumerated(identifier: identifier, schema: enumerated)
        case .boolean(let boolean):
            return Boolean(identifier: identifier, schema: boolean)
        case .number(let number):
            return Number(identifier: identifier, schema: number)
        case .integer(let integer):
            return Integer(identifier: identifier, schema: integer)
        case .string(let string):
            return String_(identifier: identifier, schema: string)
        case .color(let color):
            return Color(identifier: identifier, schema: color)
        case .colorList(let colorList):
            return ColorList(identifier: identifier, schema: colorList)
        case .colorScale(let colorScale):
            return ColorScale(identifier: identifier, schema: colorScale)
        case .angle(let angle):
            return Angle(identifier: identifier, schema: angle)
        case .subplotID(let subplotID):
            return SubplotID(identifier: identifier, schema: subplotID)
        case .flagList(let flagList):
            return FlagList(identifier: identifier, schema: flagList)
        case .any(let any):
            return Any_(identifier: identifier, schema: any)
        case .infoArray(let infoArray):
            return InfoArray(identifier: identifier, schema: infoArray)
        }
    }

}


protocol SwiftDataType {
    var type: String { get }
    var schema: SchemaDataType? { get }
    var identifier: String { get }
    var description: String { get }

    func argument(withIdentifier: String) -> String
    func instance(withIdentifier: String) -> [String]
    func definition() -> [String]
}

extension SwiftDataType {
    var description: String { schema?.description ?? "" }

    func argument(withIdentifier identifier: String) -> String {
        return "\(identifier): \(type)"
    }

    func instance(withIdentifier identifier: String) -> [String] {
        var lines = [String]()
        lines += ["/// \(description)"]
        lines += ["var \(argument(withIdentifier: identifier))"]
        return lines
    }

    func definition() -> [String] {
        return []
    }
}
