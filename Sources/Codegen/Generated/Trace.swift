
/// Generated struct corresponding to one of Plotly `trace`s.
struct Trace: Definable {
    let schema: Schema.Trace
    let attributes: Generated.Object

    var documentation: Markup {
        var markup = Markup(parse: schema.meta["description"])
        markup.addCallout(seeAlso: schema.attributes.path)
        return markup
    }
    var definition: [String] { attributes.definition }

    init?(identifier: String, schema: Schema.Trace, layout: inout Layout) {
        if identifier == "area" { return nil }
        self.schema = schema

        attributes = Generated.Object(named: identifier, schema: schema.attributes)!
        attributes.protocols = ["Trace"]

        let predefinedString = Predefined.String_(codingPath: [Schema.Keys("type")], valType: "string", description: nil,
                editType: nil, role: nil, dflt: nil, noBlank: nil, strict: nil, values: nil, arrayOk: nil)
        let generatedString = Generated.String_(parent: attributes, schema: predefinedString)
        let typeConst = Instance(of: generatedString, named: "type")
        typeConst.constant = schema.type.escaped()
        typeConst.optional = false
        attributes.members.insert(typeConst, at: 0)

        let predefinedBol = Predefined.Boolean(codingPath: [Schema.Keys("animatable")], valType: "bool", description: nil,
                editType: nil, role: nil)
        let generatedBool = Generated.Boolean(parent: attributes, schema: predefinedBol)
        let animatableConst = Instance(of: generatedBool, named: "animatable")
        animatableConst.constant = String(schema.animatable)
        animatableConst.optional = false
        attributes.members.insert(animatableConst, at: 1)

        workarounds()
        layoutWorkarounds(schema: schema, layout: &layout)
    }

    /// Post-processing to introduce generics and remove obsolete members.
    private func workarounds() {
        var disabledGenerics: [String] = []
        attributes.frequentProperties = [
            "name", "line", "marker", "mode", "text", "hoverText", "colorScale", "reverseScale"
        ]

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
            let xyzData = Generated.Generic(name: "XYZData", parent: attributes,
                    origin: x.origin, constraint: "Plotable")
            x.type = Generated.Override(of: x.type, as: xyzData.name)
            y.type = Generated.Override(of: y.type, as: xyzData.name)
            z.type = Generated.Override(of: z.type, as: xyzData.name)
            let u = attributes.members.firstInstance(named: "u")!
            let v = attributes.members.firstInstance(named: "v")!
            let w = attributes.members.firstInstance(named: "w")!
            let uvwData = Generated.Generic(name: "UVWData", parent: attributes,
                    origin: u.origin, constraint: "Plotable")
            u.type = Generated.Override(of: u.type, as: uvwData.name)
            v.type = Generated.Override(of: v.type, as: uvwData.name)
            w.type = Generated.Override(of: w.type, as: uvwData.name)

        case "Heatmap":
            fallthrough
        case "HeatmapGL":
            disabledGenerics += ["z", "x", "y"]
            let z = attributes.members.firstInstance(named: "z")!
            let zData = Generated.Generic(name: "ZData", parent: attributes,
                    origin: z.origin, constraint: "Plotable")
            z.type = Generated.Override(of: z.type, as: zData.name)
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let xyData = Generated.Generic(name: "XYData", parent: attributes,
                    origin: x.origin, constraint: "Plotable")
            x.type = Generated.Override(of: x.type, as: xyData.name)
            y.type = Generated.Override(of: y.type, as: xyData.name)

        case "Mesh3D":
            disabledGenerics += ["i", "j", "k"]
            let i = attributes.members.firstInstance(named: "i")!
            i.type = Generated.Override(of: i.type, as: "[Int]")
            let j = attributes.members.firstInstance(named: "j")!
            j.type = Generated.Override(of: j.type, as: "[Int]")
            let k = attributes.members.firstInstance(named: "k")!
            k.type = Generated.Override(of: k.type, as: "[Int]")

        case "Scatter":
            let obsolete = ["t", "r"]
            attributes.members.removeAllInstances(named: obsolete)

        case "Pie":
            let marker = attributes.members.firstInstance(named: "marker")!
            let markerColors = (marker.type as! Generated.Object).members.firstInstance(named: "colors")!
            markerColors.type = Generated.Override(of: markerColors.type, as: "ArrayOrColor")

        case "PointCloud":
            disabledGenerics += ["x", "y", "xy", "xBounds", "yBounds", "indices"]
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let xy = attributes.members.firstInstance(named: "xy")!
            let xyData = Generated.Generic(name: "XYData", parent: attributes,
                    origin: x.origin, constraint: "Plotable")
            x.type = Generated.Override(of: x.type, as: xyData.name)
            y.type = Generated.Override(of: y.type, as: xyData.name)
            xy.type = Generated.Override(of: xy.type, as: xyData.name)
            let indices = attributes.members.firstInstance(named: "indices")!
            indices.type = Generated.Override(of: indices.type, as: "[Int]")

        case "Sunburst":
            fallthrough
        case "Treemap":
            disabledGenerics += ["parents", "labels"]
            let parents = attributes.members.firstInstance(named: "parents")!
            parents.type = Generated.Override(of: parents.type, as: "[String]")
            let labels = attributes.members.firstInstance(named: "labels")!
            labels.type = Generated.Override(of: labels.type, as: "[String]")

        case "Surface":
            disabledGenerics += ["z", "x", "y", "surfaceColor"]
            let z = attributes.members.firstInstance(named: "z")!
            let surfaceColor = attributes.members.firstInstance(named: "z")!
            let zData = Generated.Generic(name: "ZData", parent: attributes,
                    origin: z.origin, constraint: "Plotable")
            z.type = Generated.Override(of: z.type, as: zData.name)
            surfaceColor.type = Generated.Override(of: surfaceColor.type, as: zData.name)
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let xyData = Generated.Generic(name: "XYData", parent: attributes,
                    origin: x.origin, constraint: "Plotable")
            x.type = Generated.Override(of: x.type, as: xyData.name)
            y.type = Generated.Override(of: y.type, as: xyData.name)

        case "Table":
            disabledGenerics += ["columnOrder"]
            let columnOrder = attributes.members.firstInstance(named: "columnOrder")!
            columnOrder.type = Generated.Override(of: columnOrder.type, as: "[Int]")

        case "Volume":
            disabledGenerics += ["x", "y", "z"]
            let x = attributes.members.firstInstance(named: "x")!
            let y = attributes.members.firstInstance(named: "y")!
            let z = attributes.members.firstInstance(named: "z")!
            let xyzData = Generated.Generic(name: "XYZData", parent: attributes,
                    origin: x.origin, constraint: "Plotable")
            x.type = Generated.Override(of: x.type, as: xyzData.name)
            y.type = Generated.Override(of: y.type, as: xyzData.name)
            z.type = Generated.Override(of: z.type, as: xyzData.name)

        case "Waterfall":
            disabledGenerics += ["measure"]
            let measure = attributes.members.firstInstance(named: "measure")!
            measure.type = Generated.Override(of: measure.type, as: "[String]")

        default:
            break
        }

        if let ids = attributes.members.firstInstance(named: "ids") {
            disabledGenerics += ["ids"]
            ids.type = Generated.Override(of: ids.type, as: "[String]")
        }
        if let customData = attributes.members.firstInstance(named: "customData") {
            disabledGenerics += ["customData"]
            customData.type = Generated.Override(of: customData.type, as: "[String]")
        }
        if let text = attributes.members.firstInstance(named: "text") {
            disabledGenerics += ["text"]
            text.type = Generated.Override(of: text.type, as: "ArrayOrString")
        }
        if let hoverText = attributes.members.firstInstance(named: "hoverText") {
            disabledGenerics += ["hoverText"]
            hoverText.type = Generated.Override(of: hoverText.type, as: "ArrayOrString")
        }
        if let latitude = attributes.members.firstInstance(named: "latitude"),
           let longitude = attributes.members.firstInstance(named: "longitude") {
            disabledGenerics += ["latitude", "longitude"]
            let coordinateData = Generated.Generic(name: "CoordinateData", parent: attributes,
                    origin: latitude.origin, constraint: "Plotable")
            latitude.type = Generated.Override(of: latitude.type, as: coordinateData.name)
            longitude.type = Generated.Override(of: longitude.type, as: coordinateData.name)
        }

        for instance in attributes.members.compactMap( { $0 as? Instance } ) where instance.origin.role == "data" {
            if disabledGenerics.contains(instance.name) { continue }
            let generic = Generated.Generic(name: "\(instance.name.capitalized)Data",
                    parent: attributes, origin: instance.origin, constraint: "Plotable")
            instance.type = generic
        }
    }

    /// Post-processing that resolves collisions of identical layoutAttributes of different traces.
    private func layoutWorkarounds(schema: Schema.Trace, layout: inout Layout) {
        guard let entries = schema.layoutAttributes else { return }
        let layoutAttributes = Generated.Object(named: "layout", schema: entries)!
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


extension Generated {
    /// Generated data type that implements Swift generics.
    struct Generic: GeneratedType {
        let name: String
        let parent: Generated.Object?
        let origin: PredefinedType

        init(name: String, parent: Generated.Object, origin: PredefinedType, constraint: String? = nil) {
            self.name = name
            self.parent = parent
            self.origin = origin

            parent.generics.append(name)
            if constraint != nil { parent.constraints.append("\(name): \(constraint!)") }
        }
    }

    /// Generated data type that manually overrides the `servant` data type with a string.
    struct Override: GeneratedType {
        let servant: GeneratedType

        let name: String
        var parent: Generated.Object? { servant.parent }
        var origin: PredefinedType { servant.origin }

        init(of servant: GeneratedType, as name: String) {
            self.name = name
            self.servant = servant
        }
    }
}
