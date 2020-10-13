
/// An empty dummy shorthand for a non-utilized generic `Plotable` type.
///
/// This type is a placeholder that can be used in cases where you don't use all generic types provided
/// by a particular trace. It (hopefully) improves readability and clarifies intent of the source code in these
/// situations.
///
/// For example, the `Box` trace requires specification of three generic types for `YData`, `XData`
/// and `QData`.
///
/// ```
/// let box = Box<[Double], Unused, Unused>(
///     y: [1.9, 2.1, 2.2, 2.1]
/// )
/// ```
///
/// Most of the time one uses either one of XY or Q, but not both at the same time. To
/// create an instance, one would have to come up with some dummy type for `XData` and `QData`
/// that conforms to the `Plotable` protocol. This very likely confuses the potential reader because
/// the corresponding `XData`/`QData` attribute is never set and never used.
///
/// - Remark
/// The type is intentionally an enum to prevent incorrect use. It's impossible to create an instance.
///
public enum Unused: Plotable {
    public func encode(toPlotly encoder: Encoder) { }
}
