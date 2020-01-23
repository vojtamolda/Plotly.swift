import Foundation


/// Swift struct corresponding to a Plotly `trace`.
struct Trace: Definable {
    let schema: Schema.Trace
    let attributes: Swift.Object

    var documentation: [String] { schema.meta["description"]?.documentation() ?? [] }
    var definition: [String] { attributes.definition }

    init?(identifier: String, schema: Schema.Trace, layout: inout Layout) {
        if identifier == "area" { return nil }
        self.schema = schema

        attributes = Swift.Object(named: identifier, schema: schema.attributes)!
        attributes.protocols = ["Trace"]

        let stringSchema = Schema.String_(codingPath: [Schema.Keys("type")], valType: "string",
                                          description: nil, editType: nil, role: nil, dflt: nil,
                                          noBlank: nil, strict: nil, values: nil, arrayOk: nil)
        let stringType = Swift.String_(parent: attributes, schema: stringSchema)
        let typeConst = Instance(of: stringType, named: "type")
        typeConst.constant = schema.type.escaped()
        typeConst.optional = false
        attributes.members.insert(typeConst, at: 0)

        let boolSchema = Schema.Boolean(codingPath: [Schema.Keys("animatable")], valType: "bool",
                                        description: nil, editType: nil, role: nil)
        let boolType = Swift.Boolean(parent: attributes, schema: boolSchema)
        let animatableConst = Instance(of: boolType, named: "animatable")
        animatableConst.constant = String(schema.animatable)
        animatableConst.optional = false
        attributes.members.insert(animatableConst, at: 1)

        workarounds()

        if let entries = schema.layoutAttributes {
            var sectionMark: Mark? = nil
            let layoutAttributes = Swift.Object(named: "layout", schema: entries)!

            switch attributes.name {
            case "Bar":
                sectionMark = Mark(label: "Bar, BarPolar and Histogram Traces")
            case "BarPolar":
                fallthrough
            case "Histogram":
                let duplicates: Set = ["barMode", "barNormalization", "barGap", "barGroupGap"]
                layoutAttributes.members = layoutAttributes.members.removedInstances(named: duplicates)
            case "Box":
                sectionMark = Mark(label: "Box and Candlestick Traces")
            case "Candlestick":
                let duplicates: Set = ["boxMode", "boxGap", "boxGroupGap"]
                layoutAttributes.members = layoutAttributes.members.removedInstances(named: duplicates)
            case "FunnelArea":
                sectionMark = Mark(label: "FunnelArea Trace")
                let duplicates: Set = ["hiddenLabels"]
                layoutAttributes.members = layoutAttributes.members.removedInstances(named: duplicates)
            default:
                sectionMark = Mark(label: "\(attributes.name) Trace")
            }

            if sectionMark != nil { layout.layoutAttributes.members.insert(sectionMark!, at: 0) }
            layout.layoutAttributes.members.insert(contentsOf: layoutAttributes.members, at: 1)
        }
    }

    /// Post-processing hacks that introduce generics and remove obsolete members.
    private func workarounds() {
        switch attributes.name {
        case "Bar":
            let obsolete: Set = ["t", "r"]
            attributes.members = attributes.members.removedInstances(named: obsolete)
        case "Scatter":
            let obsolete: Set = ["t", "r"]
            attributes.members = attributes.members.removedInstances(named: obsolete)
        case "Volume":
            changeAttributeToGeneric(name: "value")    
        default:
            break
        }
        changeAttributeToGeneric(name: "x")
        changeAttributeToGeneric(name: "y")
        changeAttributeToGeneric(name: "z")

        changeAttributeToGeneric(name: "r")
        changeAttributeToGeneric(name: "theta")
    }

    private func changeAttributeToGeneric(name: String) {
        if let idx = attributes.members.firstIndex(where: { ($0 as? Instance)?.name == name }) {
            let replaced = attributes.members[idx] as! Instance
            let generic = Swift.Generic(name: "\(replaced.name.capitalized)Data",
                parent: attributes, origin: replaced.origin, constraint: "Encodable")
            attributes.members[idx] = generic.instance(named: replaced.name)
        }
    }
}
