import Foundation


// TODO: Docs
extension Layout.Title: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String

    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

// TODO: Docs
extension Layout.XAxis.Title: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String

    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

// TODO: Docs
extension Layout.YAxis.Title: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String

    public init(stringLiteral: String) {
        self.init(text: stringLiteral)
    }
}

// TODO: Docs
extension Shared.Font: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String

    public init(stringLiteral: String) {
        self.init(family: stringLiteral)
    }
}
