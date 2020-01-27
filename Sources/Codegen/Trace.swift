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

        let stringSchema = Schema.String_(codingPath: [Schema.Keys("type")], valType: "string", description: nil,
                editType: nil, role: nil, dflt: nil, noBlank: nil, strict: nil, values: nil, arrayOk: nil)
        let stringType = Swift.String_(parent: attributes, schema: stringSchema)
        let typeConst = Instance(of: stringType, named: "type")
        typeConst.constant = schema.type.escaped()
        typeConst.optional = false
        attributes.members.insert(typeConst, at: 0)

        let boolSchema = Schema.Boolean(codingPath: [Schema.Keys("animatable")], valType: "bool", description: nil,
                editType: nil, role: nil)
        let boolType = Swift.Boolean(parent: attributes, schema: boolSchema)
        let animatableConst = Instance(of: boolType, named: "animatable")
        animatableConst.constant = String(schema.animatable)
        animatableConst.optional = false
        attributes.members.insert(animatableConst, at: 1)

        workarounds()
        layoutWorkarounds(schema: schema, layout: &layout)
    }

    /// Post-processing hacks that introduce generics and remove obsolete members.
    private func workarounds() {
        var disabledGenerics: [String] = []

        switch attributes.name {
        case "Bar":
            let obsolete = ["t", "r"]
            attributes.members.removeAllInstances(named: obsolete)

        case "Box":
            let nameIndex = attributes.members.firstIndex{ ($0 as? Instance)?.name == "name" }!
            let opacityIndex = attributes.members.firstIndex{ ($0 as? Instance)?.name == "opacity" }!
            let name = attributes.members.remove(at: nameIndex)
            attributes.members.insert(name, at: opacityIndex + 1)

        case "Cone":
            fallthrough
        case"StreamTube":
            disabledGenerics += ["x", "y", "z", "u", "v", "w"]
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let z = attributes.members.firstInstance(named: "z")!
            let xyzData = Swift.Generic(name: "XYZData", parent: attributes,
                    origin: x.origin, constraint: "Encodable")
            x.type = Swift.Override(of: x.type, as: xyzData.name)
            y.type = Swift.Override(of: y.type, as: xyzData.name)
            z.type = Swift.Override(of: z.type, as: xyzData.name)
            let u = attributes.members.firstInstance(named: "u")!
            let v = attributes.members.firstInstance(named: "v")!
            let w = attributes.members.firstInstance(named: "w")!
            let uvwData = Swift.Generic(name: "UVWData", parent: attributes,
                    origin: u.origin, constraint: "Encodable")
            u.type = Swift.Override(of: u.type, as: uvwData.name)
            v.type = Swift.Override(of: v.type, as: uvwData.name)
            w.type = Swift.Override(of: w.type, as: uvwData.name)

        case "Heatmap":
            fallthrough
        case "HeatmapGL":
            disabledGenerics += ["z", "x", "y"]
            let z = attributes.members.firstInstance(named: "z")!
            let zData = Swift.Generic(name: "ZData", parent: attributes,
                    origin: z.origin, constraint: "Encodable")
            z.type = Swift.Override(of: z.type, as: zData.name)
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let xyData = Swift.Generic(name: "XYData", parent: attributes,
                    origin: x.origin, constraint: "Encodable")
            x.type = Swift.Override(of: x.type, as: xyData.name)
            y.type = Swift.Override(of: y.type, as: xyData.name)

        case "Mesh3D":
            disabledGenerics += ["i", "j", "k"]
            let i = attributes.members.firstInstance(named: "i")!
            i.type = Swift.Override(of: i.type, as: "[Int]")
            let j = attributes.members.firstInstance(named: "j")!
            j.type = Swift.Override(of: j.type, as: "[Int]")
            let k = attributes.members.firstInstance(named: "k")!
            k.type = Swift.Override(of: k.type, as: "[Int]")

        case "Scatter":
            let obsolete = ["t", "r"]
            attributes.members.removeAllInstances(named: obsolete)

        case "Pie":
            let marker = attributes.members.firstInstance(named: "marker")!
            let markerColors = (marker.type as! Swift.Object).members.firstInstance(named: "colors")!
            markerColors.type = Swift.Override(of: markerColors.type, as: "ArrayOrColor")

        case "PointCloud":
            disabledGenerics += ["x", "y", "xy", "xBounds", "yBounds", "indices"]
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let xy = attributes.members.firstInstance(named: "xy")!
            let xyData = Swift.Generic(name: "XYData", parent: attributes,
                    origin: x.origin, constraint: "Encodable")
            x.type = Swift.Override(of: x.type, as: xyData.name)
            y.type = Swift.Override(of: y.type, as: xyData.name)
            xy.type = Swift.Override(of: xy.type, as: xyData.name)
            let indices = attributes.members.firstInstance(named: "indices")!
            indices.type = Swift.Override(of: indices.type, as: "[Int]")

        case "Sunburst":
            fallthrough
        case "Treemap":
            disabledGenerics += ["parents", "labels"]
            let parents = attributes.members.firstInstance(named: "parents")!
            parents.type = Swift.Override(of: parents.type, as: "[String]")
            let labels = attributes.members.firstInstance(named: "labels")!
            labels.type = Swift.Override(of: labels.type, as: "[String]")

        case "Surface":
            disabledGenerics += ["z", "x", "y", "surfaceColor"]
            let z = attributes.members.firstInstance(named: "z")!
            let surfaceColor = attributes.members.firstInstance(named: "z")!
            let zData = Swift.Generic(name: "ZData", parent: attributes,
                    origin: z.origin, constraint: "Encodable")
            z.type = Swift.Override(of: z.type, as: zData.name)
            surfaceColor.type = Swift.Override(of: surfaceColor.type, as: zData.name)
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let xyData = Swift.Generic(name: "XYData", parent: attributes,
                    origin: x.origin, constraint: "Encodable")
            x.type = Swift.Override(of: x.type, as: xyData.name)
            y.type = Swift.Override(of: y.type, as: xyData.name)

        case "Table":
            disabledGenerics += ["columnOrder"]
            let columnOrder = attributes.members.firstInstance(named: "columnOrder")!
            columnOrder.type = Swift.Override(of: columnOrder.type, as: "[Int]")

        case "Volume":
            disabledGenerics += ["x", "y", "z"]
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let z = attributes.members.firstInstance(named: "z")!
            let xyzData = Swift.Generic(name: "XYZData", parent: attributes,
                    origin: x.origin, constraint: "Encodable")
            x.type = Swift.Override(of: x.type, as: xyzData.name)
            y.type = Swift.Override(of: y.type, as: xyzData.name)
            z.type = Swift.Override(of: z.type, as: xyzData.name)

        case "Waterfall":
            disabledGenerics += ["measure"]
            let measure = attributes.members.firstInstance(named: "measure")!
            measure.type = Swift.Override(of: measure.type, as: "[String]")

        default:
            break
        }

        if let ids = attributes.members.firstInstance(named: "ids") {
            disabledGenerics += ["ids"]
            ids.type = Swift.Override(of: ids.type, as: "[String]")
        }
        if let customData = attributes.members.firstInstance(named: "customData") {
            disabledGenerics += ["customData"]
            customData.type = Swift.Override(of: customData.type, as: "[String]")
        }
        if let text = attributes.members.firstInstance(named: "text") {
            disabledGenerics += ["text"]
            text.type = Swift.Override(of: text.type, as: "ArrayOrString")
        }
        if let hoverText = attributes.members.firstInstance(named: "hoverText") {
            disabledGenerics += ["hoverText"]
            hoverText.type = Swift.Override(of: hoverText.type, as: "ArrayOrString")
        }
        if let latitude = attributes.members.firstInstance(named: "latitude"),
           let longitude = attributes.members.firstInstance(named: "longitude") {
            disabledGenerics += ["latitude", "longitude"]
            let coordinateData = Swift.Generic(name: "CoordinateData", parent: attributes,
                    origin: latitude.origin, constraint: "Encodable")
            latitude.type = Swift.Override(of: latitude.type, as: coordinateData.name)
            longitude.type = Swift.Override(of: longitude.type, as: coordinateData.name)
        }

        for instance in attributes.members.compactMap( { $0 as? Instance } ) where instance.origin.role == "data" {
            if disabledGenerics.contains(instance.name) { continue }
            let generic = Swift.Generic(name: "\(instance.name.capitalized)Data",
                    parent: attributes, origin: instance.origin, constraint: "Encodable")
            instance.type = generic
        }
    }

    /// Post-processing hacks that resolves collisions identical of layoutAttributes of different traces.
    private func layoutWorkarounds(schema: Schema.Trace, layout: inout Layout) {
        guard let entries = schema.layoutAttributes else { return }
        let layoutAttributes = Swift.Object(named: "layout", schema: entries)!
        var sectionMark: Mark? = nil

        switch attributes.name {
        case "Bar":
            sectionMark = Mark(label: "Bar, BarPolar and Histogram")
        case "BarPolar":
            fallthrough
        case "Histogram":
            sectionMark = nil
            let duplicates = ["barMode", "barNormalization", "barGap", "barGroupGap"]
            layoutAttributes.members.removeAllInstances(named: duplicates)

        case "Box":
            sectionMark = Mark(label: "Box and Candlestick")
        case "Candlestick":
            sectionMark = nil
            let duplicates = ["boxMode", "boxGap", "boxGroupGap"]
            layoutAttributes.members.removeAllInstances(named: duplicates)

        case "FunnelArea":
            sectionMark = Mark(label: "FunnelArea")
            let duplicates = ["hiddenLabels"]
            layoutAttributes.members.removeAllInstances(named: duplicates)

        default:
            sectionMark = Mark(label: "\(attributes.name)")
        }

        if sectionMark != nil { layout.layoutAttributes.members.insert(sectionMark!, at: 0) }
        layout.layoutAttributes.members.insert(contentsOf: layoutAttributes.members, at: 1)
    }
}
