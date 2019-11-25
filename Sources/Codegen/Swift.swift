//
//
//
//struct Member {
//    var type: DataType
//
//    init(of type: DataType) {
//        self.type = type
//    }
//}
//
//
//class Definitions {
//    static let Factories: [String: DataType.Factory.Type] = [
//        "data_array": DataArray.Factory.self,
//        "enumerated": Enumerated.Factory.self,
//        "boolean": Boolean.Factory.self,
//        "number": Number.Factory.self,
//        "integer": Integer.Factory.self,
//        "string": Stringy.Factory.self,
//        "color": Color.Factory.self,
//        "colorlist": ColorList.Factory.self
//    ]
//
//    var ancestor: Schema.Defs
//    var factories: [String: DataType.Factory]
//
//    init(from defs: Schema.Defs) {
//        ancestor = defs
//        factories = [:]
//
//        for (valType, datatype) in defs.valObjects {
//            let FactoryType = Definitions.Factories[valType]!
//            let factory = FactoryType.init(withValType: valType, from: datatype)
//            factories[valType] = factory
//        }
//    }
//
//    func makeMember(withIdentifier identifier: String, from attributes: Schema.Attribute) -> Member {
//        let valType = attributes.valType ?? "object"
//        let factory = factories[valType]!
//        let type = factory.makeType(withIdentifier: identifier, from: attributes)
//        let member = type.makeMember(withIdentifier: identifier, from: attributes)
//        return member
//    }
//}
//
//
//
//
//class DataType {
//    var identifier = ""
//    var ancestor: Schema.Attribute
//    var members: [Member]
//
//
//    enum Context {
//        case inline
//        case regular
//    }
//
//    required init(from attribute: Schema.Attribute) {
//        ancestor = attribute
//        members = []
//    }
//
//    /// Creates an instance of the type accessible with idetifier and specified by attribute.
//    func makeMember(withIdentifier identifier: String, from attribute: Schema.Attribute) -> Member {
//        let member = Member(of: self)
//        members.append(member)
//        return member
//    }
//
//    /// Returns a piece of Swift code uses the variable as a function argument.
//    func definition(context: Context = .regular) -> [String] {
//        return []
//    }
//
//
//    class Factory {
//        var valType: String
//        var ancestor: Schema.Datatype
//        var existing: [DataType]
//
//        required init(withValType valType: String, from datatype: Schema.Datatype) {
//            self.valType = valType
//            ancestor = datatype
//            existing = []
//        }
//
//        func makeType(withIdentifier identifier: String, from attribute: Schema.Attribute) -> DataType {
//            precondition(attribute.valType == valType)
//
//            // TODO: Search existing types made from this template
//
//            let type = DataType(from: attribute)
//            return type
//        }
//    }
//
//}
//
//
//
//class DataArray: DataType { }
//
//class Enumerated: DataType { }
//
//class Boolean: DataType { }
//
//class Number: DataType { }
//
//class Integer: DataType { }
//
//class Stringy: DataType { }
//
//class Color: DataType { }
//
//class ColorList: DataType { }
//
//class Struct: DataType { }
