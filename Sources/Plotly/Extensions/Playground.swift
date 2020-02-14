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
        case .value(let value):
            let red   = UInt8((value & 0xff0000) >> 16)
            let green = UInt8((value & 0x00ff00) >> 8)
            let blue  = UInt8((value & 0x0000ff) >> 0)
            return NSColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255,
                           blue: CGFloat(blue) / 255, alpha: CGFloat(1))
        case .RGB(let red, let green, let blue, let alpha):
            return NSColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255,
                           blue: CGFloat(blue) / 255, alpha: CGFloat(alpha ?? 1))
        case .HSL(let hue, let saturation, let lightness, let alpha):
            return NSColor(hue: CGFloat(hue) / 360, saturation: CGFloat(saturation) / 100,
                           brightness: CGFloat(lightness) / 100, alpha: CGFloat(alpha ?? 1))
        case .CSS(let name, _):
            return NSColor(named: name) ?? NSColor.white
        }
    }
}

#endif
