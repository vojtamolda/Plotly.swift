import Foundation


extension Title: ExpressibleByStringLiteral {
    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

extension Layout.Title: ExpressibleByStringLiteral {
    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

extension XAxis.Title: ExpressibleByStringLiteral {
    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

extension YAxis.Title: ExpressibleByStringLiteral {
    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

extension Font: ExpressibleByStringLiteral {
    public init(stringLiteral: String) {
        self.init(family: stringLiteral)
    }
}
