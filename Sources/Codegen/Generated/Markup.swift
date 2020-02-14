import Foundation


/// Formatted markup text that provides symbol quick help for IDEs like XCode or VS Code.
///
/// Syntax and structure of the text follows the [Markup Formatting Reference]
/// (https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref).
struct Markup {
    static let width = 96

    var summary: [String]? = nil
    var discussion: [String] = []
    var callouts: [String: [String]] = [:]

    /// Creates markup text from summary and discussion.
    init(summary: String? = nil, discussion: [String] = []) {
        self.summary = (summary != nil) ? [summary!] : nil
        self.discussion = discussion
    }

    /// Creates markup text by parsing a Plotly schema description string.
    ///
    /// Text is wrapped so not to exceed the `width` characters. The first sentence is split to form a summary
    /// and the rest of the description forms the discussion part.
    init(parse description: String?) {
        if description == nil || description == "" { return }

        let scanner = Scanner(string: description!)
        if var firstSentence = scanner.scanUpToString(". ") {
            if let dot = scanner.scanString(". ") { firstSentence += dot }
            summary = firstSentence.wrapped(at: Self.width)
        }

        let remainingText = String(scanner.string.suffix(from: scanner.currentIndex))
        if !remainingText.isEmpty {
            discussion = remainingText.wrapped(at: Self.width)
        }
    }

    /// Renders and returns the markup text. Each line is prefixed with `///`.
    func text() -> [String] {
        var sections: [[String]] = []

        if summary != nil {
            sections += [summary!]
        }
        if !discussion.isEmpty {
            sections += [discussion]
        }
        for (heading, content) in callouts {
            var callout = ["- \(heading):"]
            callout += content.indented(1, indentation: "  ")
            sections += [callout]
        }

        let lines = sections.joined(separator: [""])
        return lines.map { "/// \($0)" }
    }

    /// Add a generic callout section with the specified name and contents.
    mutating func addCallout(named heading: String, content: [String]) {
        if callouts[heading] == nil { callouts[heading] = [] }
        callouts[heading]!.append(contentsOf: content)
    }

    /// Adds a _Parameters_ callout section describing the provided function arguments.
    mutating func addCallout(parameters arguments: [Instance]) {
        let documentedCount = arguments.filter { $0.documentation.summary != nil }.count
        if documentedCount == 0 { return }

        let summaries: [[String]] = arguments.map { argument in
            let argumentSummary = argument.documentation.summary?.joined(separator: " ") ?? ""
            let summary = "- \(argument.name): \(argumentSummary)"
            return summary.wrapped(at: Self.width)
        }
        addCallout(named: "Parameters", content: summaries.reduce([], +))
    }

    /// Adds a _Example_ callout section with a list of references.
    mutating func addCallout(note references: [Instance]) {
        if references.count <= 1 { return }

        let paths = references.map { "`\($0.path)`" }.joined(separator: ",")
        let content = "Used by \(paths)."
        addCallout(named: "Note", content: content.wrapped(at: Self.width))
    }

    /// Adds a _See Also_ callout section with links to equivalent Plotly JavaScript, Python and R reference.
    /// - Bug: XCode currently doesn't render the `SeeAlso` section at all in Quick Look help. But Jazzy docs look fine.
    mutating func addCallout(seeAlso path: String) {
        var link = path
        link = link.replacingOccurrences(of: "/", with: "-")
        link = link.replacingOccurrences(of: "-", with: "")
        link = link.replacingOccurrences(of: "traces", with: "")
        link = link.replacingOccurrences(of: "attributes", with: "")
        link = link.replacingOccurrences(of: "layoutAttributes", with: "")
        link = link.lowercased()

        addCallout(named: "SeeAlso", content: [
            "Documentation for ",
            "[Python](https://plot.ly/python/reference/#\(link)), ",
            "[JavaScript](https://plot.ly/javascript/reference/#\(link)) or ",
            "[R](https://plot.ly/r/reference/#\(link))"]
        )
    }
}


extension String {
    /// Wraps the string and returns an array of lines that don't exceed the `width`.
    func wrapped(at width: Int = 100) -> [String] {
        let scanner = Scanner(string: self)

        var words: [String] = []
        var wrapped: [String] = []
        while let word = scanner.scanUpToCharacters(from: CharacterSet.whitespacesAndNewlines) {
            if word.count + (words.reduce(words.count) { $0 + $1.count }) > width {
                wrapped.append(words.joined(separator: " "))
                words = []
            }
            words.append(word)
        }
        wrapped.append(words.joined(separator: " "))

        return wrapped
    }
}
