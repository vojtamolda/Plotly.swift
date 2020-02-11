import Foundation


/// Container for all shared Swift data types.
struct Shared: Definable {
    var documentation = Markup()
    var definition: [String] {
        var lines = [String]()
        lines += ["public struct Shared {"]
        for member in shared.members {
            lines += member.define(as: .shared).indented()
            lines += [""]
        }
        lines += ["}"]
        return lines
    }

    let shared: Swift.Object

    init() {
        Swift.name?.object["shared"] = "Shared"
        shared = Swift.Object(named: "shared", schema: Schema.Object())!

        Swift.Enumerated.share(parent: shared)
        shared.members.append(Mark(label: "Enums"))
        shared.members.append(contentsOf: Swift.Enumerated.existingShared)

        Swift.FlagList.share(parent: shared)
        shared.members.append(Mark(label: "FlagLists"))
        shared.members.append(contentsOf: Swift.FlagList.existingShared)

        Swift.Object.share(parent: shared)
        shared.members.append(Mark(label: "Objects"))
        shared.members.append(contentsOf: Swift.Object.existingShared)
    }
}


extension SwiftSharedType {
    static var existingShared: [Self] { Self.existing.filter { $0.shared } }

    /// Identifies shareable data types and re-associates their instances to a single shared parent type.
    static func share(parent: Swift.Object) {
        var visited = Set<Int>()
        let prioritizedTypes = Self.existing.sorted{ $0.priority > $1.priority }.enumerated()

        for sharedType in prioritizedTypes where !visited.contains(sharedType.offset) {
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
