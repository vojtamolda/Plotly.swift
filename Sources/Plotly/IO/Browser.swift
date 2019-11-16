import Foundation


public struct Browser {
    
    static public func open(url: URL) {
        let env = URL(fileURLWithPath: "/usr/bin/env")
        let browser = try! Process.run(env, arguments: ["open", url.absoluteString])
        browser.waitUntilExit()
    }

}
