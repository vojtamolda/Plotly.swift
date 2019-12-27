import Foundation


/// Swift struct corresponding to Plotly `config`.
struct Config: Definable {
    var definition: [String] { attributes.definition }
    let attributes: Swift.Object

    init(schema: Schema.Object) {
        attributes = Swift.Object(named: "config", schema: schema)
    }
}
