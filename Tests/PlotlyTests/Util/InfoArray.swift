import XCTest
import Plotly


final class InfoArrayTests: XCTestCase {
    static var allTests = [
        ("testConstructionFromLiterals", testConstructionFromLiterals),
    ]

    func testConstructionFromLiterals() {
        let integer: InfoArray = 1
        let double: InfoArray = 1.0
        let string: InfoArray = "String"
        print(integer, double, string)

        let array: InfoArray = [1, 1.0, "String"]
        let object: InfoArray = ["integer": 1, "double": 1.0, "string": "String"]
        print(array, object)

        let nestedArray: InfoArray = [
            ["xx", "xy"],
            ["yx", "yy"]
        ]
        let nestedObject: InfoArray = [
            "numbers": ["integer": 1, "double": 1.0, "string": "String"],
            "arrays": [[1, 2], [1.0, 2.0], ["x1", "x2"]]
        ]
        print(nestedArray, nestedObject)
    }
}
