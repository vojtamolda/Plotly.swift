#if canImport(AppKit) && canImport(WebKit)
import AppKit
import WebKit


extension Figure: CustomPlaygroundDisplayConvertible {
    public var playgroundDescription: Any {
        let html = try! HTML.create(from: self, plotly: .online,
                                    mathJax: .online, document: true)
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 400, height: 320))
        webView.loadHTMLString(html, baseURL: nil)
        return webView
    }
}


extension Color: CustomPlaygroundDisplayConvertible {
    public var playgroundDescription: Any {
        switch self {
        case .RGB(let r, let g, let b, let alpha):
            return NSColor(red: CGFloat(r), green: CGFloat(g),
                           blue: CGFloat(b), alpha: CGFloat(alpha))
        case .HSL(let h, let s, let l, let alpha):
            return NSColor(hue: CGFloat(h), saturation: CGFloat(s),
                           brightness: CGFloat(l), alpha: CGFloat(alpha))
        case .named(let name):
            return NSString(string: name)
        }
    }
}

#endif
