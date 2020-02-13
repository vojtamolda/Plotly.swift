import Foundation


/// A code generated Swift data type.
///
/// Generated Swift data types originate from some Plotly schema data type and extend it.
/// The extension allows for creation of new instances and keep track of the origin schema
/// type. The origin reference is useful for translating the name and also for parsing of
/// the documentation string to a formatted markup text.
protocol GeneratedType {
    var name: String { get }
    var parent: Generated.Object? { get }
    var origin: PredefinedType { get }

    /// Creates instance of the Swift data type with the specified name.
    func instance(named: String, array: Bool) -> Instance
}
extension GeneratedType {
    var path: String {
        var ancestors = [name]
        var ancestor = self.parent
        while ancestor != nil {
            ancestors.append(ancestor!.name)
            ancestor = ancestor!.parent
        }
        let path = ancestors.reversed().joined(separator: ".")
        return path
    }

    /// Default implementation for non-shared types.
    func instance(named: String, array: Bool = false) -> Instance {
        return Instance(of: self, named: named, array: array)
    }
}

/// Access level of a Swift property or a struct.
enum Access: String, CustomStringConvertible {
    var description: String { self.rawValue }

    case `private` = "private "
    case `public` = "public "
    case `default` = ""
}


/// A code generated and potentially multiply-referenced (i.e. shared) Swift type.
///
/// Shared types track their references to allow re-use and prevent duplicate definitions
/// of identical entities. Sharing improves the usability of the generated Swift code.
///
/// In a strongly typed language it's not possible to assign two objects to each other if
/// they are not of the same data type. This problem is completely missing in JavaScript
/// where anything can be assigned to anything. The code-generation process therefore needs
/// to do extra work to identify duplicated data types and create a single, shared definition.
/// The single definition of a re-used data type naturally allows the assignment between all
/// of it's instances.
protocol SharedGeneratedType: GeneratedType, Definable, AnyObject {
    var name: String { get set }
    var shared: Bool { get set }
    var parent: Generated.Object? { get set }
    var access: Access { get set }
    var priority: Int { get }
    var instances: [Instance] { get set }
    static var existing: [Self] { get }

    /// Checks whether the data type can by represented by `other` and therefore the definition can be shared.
    func shareable(as other: Self) -> Bool
}
extension SharedGeneratedType {
    var documentation: Markup {
        var markup = Markup(parse: origin.description)
        markup.addCallout(note: instances)
        return markup
    }

    /// Default implementation for shared types.
    ///
    /// Each constructed instance is stored to keep track of the number of references.
    func instance(named: String, array: Bool = false, origin: PredefinedType? = nil) -> Instance {
        let instance = Instance(of: self, named: named, array: array, origin: origin)
        instances.append(instance)
        return instance
    }

    /// Default implementation for shared types.
    ///
    /// There's no code generated for inlined, shared (i.e. with multiple created instances)
    /// situations to avoid duplication and build errors.
    func define(as context: Context) -> [String] {
        switch context {
        case .inlined:
            return shared ? [] : documentation.text() + definition
        case .shared:
            return shared ? documentation.text() + definition : []
        }
    }
}


/// Object that can return lines of generated Swift code.
///
/// Besides the definition of the object the generated code also contains a documentation markup.
/// Default implementation adds a convenience method for saving the generated code to a file.
protocol Definable {
    var documentation: Markup { get }
    var definition: [String] { get }

    /// Definition of the data type (including the nested inline structs) within a specific context.
    func define(as context: Context) -> [String]
}
extension Definable {
    /// Default implementation that ignores context and is useful for simple non-shared objects.
    func define(as context: Context) -> [String] {
        return documentation.text() + definition
    }

    /// Default implementation that writes Swift code that defines the data type to a URL.
    func write(to url: URL) {
        let lines = define(as: .shared)
        let contents = lines.joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}

/// Context where a generated Swift type is being defined.
enum Context {
    case inlined, shared
}
