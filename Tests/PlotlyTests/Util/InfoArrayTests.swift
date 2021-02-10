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

        let array0: InfoArray = [1, 1.0, "String"]
        let array1: InfoArray = .array([integer, double, string])
        
        let object0: InfoArray = ["integer": 1, "double": 1.0, "string": "String"]
        let object1: InfoArray = ["integer": integer, "double": double, "string": string]

        let nestedArray: InfoArray = [
            ["xx", "xy"],
            ["yx", "yy"]
        ]
        let _: InfoArray = [
            "array0": array0,
            "array1": array1,
            "object0": object0,
            "object1": object1,
            "numbers": ["integer": 1, "double": 1.0, "string": "String"],
            "array": [[1, 2], [1.0, 2.0], ["x1", "x2"]],
            "nestedArray": nestedArray
        ]
    }
}
