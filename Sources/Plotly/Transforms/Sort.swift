
/// **Warning** This is generated code and all changes will be eventually overwritten.
/// See `Sources/Codegen/Readme.md` for more details.


/// Specification of sort operation on trace data.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#transformssort), 
///   [JavaScript](https://plot.ly/javascript/reference/#transformssort) or 
///   [R](https://plot.ly/r/reference/#transformssort)
public struct Sort: Transform {
    /// Determines whether this sort transform is enabled or disabled.
    public var enabled: Bool? = nil

    /// Sets the target by which the sort transform is applied.
    /// 
    /// If a string, *target* is assumed to be a reference to a data array in the parent trace object.
    /// To sort about nested variables, use *.* to access them. For example, set `target` to
    /// *marker.size* to sort about the marker size array. If an array, *target* is then the data array
    /// by which the sort transform is applied.
    public var target: Data<String>? = nil

    /// Sets the sort transform order.
    public enum Order: String, Encodable {
        case ascending
        case descending
    }
    /// Sets the sort transform order.
    public var order: Order? = nil

    /// Creates `Sort` object with specified properties.
    /// 
    /// - Parameters:
    ///   - enabled: Determines whether this sort transform is enabled or disabled.
    ///   - target: Sets the target by which the sort transform is applied.
    ///   - order: Sets the sort transform order.
    public init(enabled: Bool? = nil, target: Data<String>? = nil, order: Order? = nil) {
        self.enabled = enabled
        self.target = target
        self.order = order
    }
    
}