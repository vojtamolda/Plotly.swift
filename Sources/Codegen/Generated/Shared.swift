
/// Container struct that holds all multiply referenced (i.e. shared) generated Swift data types.
struct Shared: Definable {
    let shared: Generated.Object

    var documentation = Markup()
    var definition: [String] {
        var lines = [String]()
        lines += ["public enum Shared {"]
        for member in shared.members {
            lines += member.define(as: .shared).indented()
            lines += [""]
        }
        lines += ["}"]
        return lines
    }

    init() {
        Schema.name?.object["shared"] = "Shared"
        shared = Generated.Object(named: "shared", schema: Predefined.Object())!

        Generated.Enumerated.share(parent: shared)
        shared.members.append(Mark(label: "Enums"))
        shared.members.append(contentsOf: Generated.Enumerated.existingShared)

        Generated.FlagList.share(parent: shared)
        shared.members.append(Mark(label: "FlagLists"))
        shared.members.append(contentsOf: Generated.FlagList.existingShared)

        Generated.Object.share(parent: shared)
        shared.members.append(Mark(label: "Objects"))
        shared.members.append(contentsOf: Generated.Object.existingShared)
    }
}

fileprivate extension SharedGeneratedType {
    static var existingShared: [Self] { Self.existing.filter { $0.shared } }
    static var disabledSharing: [String] { ["Transform"] }

    /// Identifies multiply-referenced and therefore shareable data types.
    ///
    /// All shared types have their instances re-associates to a one multiply-referenced parent data type.
    ///
    /// - Remark: Honestly, I'm not sure if I understand everything this function does, even tough I wrote it...
    /// If you happen to decipher it, please, improve the comment here.
    static func share(parent: Generated.Object) {
        var visited = Set<Int>()
        let prioritizedTypes = Self.existing.sorted{ $0.priority > $1.priority }.enumerated()

        for sharedType in prioritizedTypes where !visited.contains(sharedType.offset) {
            if disabledSharing.contains(sharedType.element.name) { continue }
            if sharedType.element.instances.count == 0 { continue }

            visited.insert(sharedType.offset)
            let shareableTypes = prioritizedTypes.filter { type in
                !visited.contains(type.offset) && type.element.shareable(as: sharedType.element)
            }

            let hasNonParentalInstances = (sharedType.element.parent?.instances.count ?? 0) <= shareableTypes.count
            if hasNonParentalInstances && shareableTypes.count > 1 {
                sharedType.element.shared = true
                sharedType.element.parent = parent
                for type in shareableTypes where !type.element.instances.isEmpty {
                    let instance = type.element.instances.removeLast()
                    instance.type = sharedType.element
                    sharedType.element.instances.append(instance)
                }
            }

            for type in shareableTypes {
                visited.insert(type.offset)
            }
        }
    }
}


