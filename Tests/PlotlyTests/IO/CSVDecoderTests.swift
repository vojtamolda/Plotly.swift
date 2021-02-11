import XCTest
import Plotly


final class CSVDecoderTests: XCTestCase {
    static var allTests = [
        ("testSimpleStruct", testSimpleStruct),
        ("testCustomKeyedDecoding", testCustomKeyedDecoding),
        ("testCustomUnkeyedDecoding", testCustomUnkeyedDecoding)
    ]
    
    func testSimpleStruct() throws {
        struct Person: Decodable, Equatable {
            var id: Int
            var name: String
            var age: Double
            
            static let testCSV = """
                "id",name,age
                "1",Andrew,17.3
                2,"Gina",19.0
                3,Isabela,"18.5"
                """.data(using: .utf8)!

            static let testGroundTruth = [
                Person(id: 1, name: "Andrew", age: 17.3),
                Person(id: 2, name: "Gina", age: 19),
                Person(id: 3, name: "Isabela", age: 18.5)
            ]
        }
        
        let decoder = CSVDecoder()
        let persons = try decoder.decode([Person].self, from: Person.testCSV, encoding: .utf8)

        XCTAssertEqual(persons, Person.testGroundTruth)
        XCTAssertThrowsError(try decoder.decode(Person.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(Double.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(String.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(Int.self, from: Person.testCSV, encoding: .utf8))
    }
    
    func testCustomKeyedDecoding() throws {
        struct Person: Decodable, Equatable {
            var id: Int
            var name: String
            var age: Double
            
            enum CodingKeys: CodingKey {
                case id, name, age
            }
            
            init(id: Int, name: String, age: Double) {
                self.id = id
                self.name = name
                self.age = age
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                id = try container.decode(Int.self, forKey: .id)
                name = try container.decode(String.self, forKey: .name)
                age = try container.decode(Double.self, forKey: .age)
            }
            
            static let testCSV = """
                "id",name,age
                "1",Andrew,17.3
                2,"Gina",19.0
                3,Isabela,"18.5"
                """.data(using: .utf8)!

            static let testGroundTruth = [
                Person(id: 1, name: "Andrew", age: 17.3),
                Person(id: 2, name: "Gina", age: 19),
                Person(id: 3, name: "Isabela", age: 18.5)
            ]
        }
        
        let decoder = CSVDecoder()
        let persons = try decoder.decode([Person].self, from: Person.testCSV, encoding: .utf8)

        XCTAssertEqual(persons, Person.testGroundTruth)
        XCTAssertThrowsError(try decoder.decode(Person.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(Double.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(String.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(Int.self, from: Person.testCSV, encoding: .utf8))
    }
    
    func testCustomUnkeyedDecoding() throws {
        struct Person: Decodable, Equatable {
            var id: Int
            var name: String
            var age: Double
            
            enum CodingKeys: CodingKey {
                case id, name, age
            }
            
            init(id: Int, name: String, age: Double) {
                self.id = id
                self.name = name
                self.age = age
            }
            
            init(from decoder: Decoder) throws {
                var container = try decoder.unkeyedContainer()
                id = try container.decode(Int.self)
                name = try container.decode(String.self)
                age = try container.decode(Double.self)
            }

            static let testCSV = """
                "id",name,age
                "1",Andrew,17.3
                2,"Gina",19.0
                3,Isabela,"18.5"
                """.data(using: .utf8)!

            static let testGroundTruth = [
                Person(id: 1, name: "Andrew", age: 17.3),
                Person(id: 2, name: "Gina", age: 19),
                Person(id: 3, name: "Isabela", age: 18.5)
            ]
        }
        
        let decoder = CSVDecoder()
        let persons = try decoder.decode([Person].self, from: Person.testCSV, encoding: .utf8)

        XCTAssertEqual(persons, Person.testGroundTruth)
        XCTAssertThrowsError(try decoder.decode(Person.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(Double.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(String.self, from: Person.testCSV, encoding: .utf8))
        XCTAssertThrowsError(try decoder.decode(Int.self, from: Person.testCSV, encoding: .utf8))
    }
}
