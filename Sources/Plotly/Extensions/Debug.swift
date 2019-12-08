#if canImport(AppKit) && canImport(WebKit)
import Foundation
import AppKit


public extension Figure {
    func debugQuickLookObject() -> AnyObject {
        self.playgroundDescription as! NSView
    }
}


public extension Trace {
    func debugQuickLookObject() -> AnyObject {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        if let encoded = try? encoder.encode(self) {
            let string = String(data: encoded, encoding: .utf8) ?? "???"
            return NSString(string: string)
        } else {
            return NSString(string: "???")
        }
    }
}


public extension Color {
    func debugQuickLookObject() -> AnyObject {
        self.playgroundDescription as! NSColor
    }
}

#endif
