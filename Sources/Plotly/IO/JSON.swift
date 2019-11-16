import Foundation


public struct JSON {

    static func create(from data: [Scatter]) -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        let encodedData = try! encoder.encode(data)
        let jsonData = String(data: encodedData, encoding: .utf8)!
        return jsonData
    }

}
