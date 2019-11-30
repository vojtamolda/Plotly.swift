
struct Swift {

    class Datatype {
        let type: String
        let identifier: String
        static var instances: [Datatype] = []
        var description: String { "" }

        init(withIdentifier identifier: String, type: String) {
            self.identifier = identifier
            self.type = type
            Self.instances.append(self)
        }

        func argument(name: String) -> String {
            return "\(name): \(type)"
        }

        func instance(name: String) -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["var \(argument(name: name))"]
            return lines
        }

        func definition() -> [String] {
            return []
        }
    }

    class DataArray: Datatype {
        let schema: Schema.Attribute.DataArray
        override var description: String { schema.description }

        init(withIdentifier identifier: String, from dataArray: Schema.Attribute.DataArray) {
            schema = dataArray
            super.init(withIdentifier: identifier, type: "[Double]")
        }
    }

    class Enumerated: Datatype {
        let schema: Schema.Attribute.Enumerated
        override var description: String { schema.description }

        init(withIdentifier identifier: String, from enumerated: Schema.Attribute.Enumerated) {
            schema = enumerated
            super.init(withIdentifier: identifier, type: identifier.camelCased())
        }

        override func definition() -> [String] {
            var lines = [String]()
            lines += ["/// " + schema.description]
            lines += ["enum \(type) {"]
            for value in schema.values {
                lines += ["case \(String(describing: value))"]
            }
            lines += ["}"]
            return lines
        }
    }

    class Boolean: Datatype {
        let schema: Schema.Attribute.Boolean
        override var description: String { schema.description }

        init(withIdentifier identifier: String, from boolean: Schema.Attribute.Boolean) {
            schema = boolean
            super.init(withIdentifier: identifier, type: "Bool")
        }
    }

    class Number: Datatype {
        let schema: Schema.Attribute.Number
        override var description: String { schema.description }

        init(withIdentifier identifier: String, from boolean: Schema.Attribute.Number) {
            schema = boolean
            super.init(withIdentifier: identifier, type: "Double")
        }
    }

    class Integer: Datatype {
        let schema: Schema.Attribute.Integer
        override var description: String { schema.description }

        init(withIdentifier identifier: String, from integer: Schema.Attribute.Integer) {
            schema = integer
            super.init(withIdentifier: identifier, type: "Int")
        }
    }

    class Struct: Datatype {
        let entries: [String: Schema.Entry]
        var primitives: [String: Schema.Primitive]
        var members: [String: Datatype]

        override var description: String {
            if entries["description"] == nil {
                return ""
            }
            if case let Schema.Entry.primitive(primitive) = entries["description"]! {
                return primitive.toString()
            } else {
                return ""
            }
        }

        required init(withIdentifier identifier: String, from entries: [String: Schema.Entry]) {
            self.entries = entries
            primitives = [:]
            members = [:]
            super.init(withIdentifier: identifier, type: identifier.camelCased())

            for (identifier, entry) in entries {
                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    let datatype = Swift.createDataType(withIdentifier: identifier, from: attribute)
                    members[identifier] = datatype
                case .entries(let entries):
                    let datatype = Self(withIdentifier: identifier, from: entries)
                    members[identifier] = datatype
                }
            }
        }

        override func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["struct \(type) {"]
            for (identifier, datatype) in members {
                lines += datatype.definition().map { "    " + $0 }
                lines += datatype.instance(name: identifier).map { "    " + $0 }
                lines += [""]
            }
            lines += ["}"]
            return lines
        }
    }

    static func createDataType(withIdentifier identifier: String, from attribute: Schema.Attribute) -> Datatype {
        switch attribute {
        case .dataArray(let dataArray):
            return DataArray(withIdentifier: identifier, from: dataArray)
        case .enumerated(let enumerated):
            return Enumerated(withIdentifier: identifier, from: enumerated)
        case .boolean(let boolean):
            return Boolean(withIdentifier: identifier, from: boolean)
        case .number(let number):
            return Number(withIdentifier: identifier, from: number)
        case .integer(let integer):
            return Integer(withIdentifier: identifier, from: integer)
        default:
            return Datatype(withIdentifier: identifier, type: "Any")
        }
    }

}
