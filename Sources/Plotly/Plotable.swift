import Foundation


// TODO: Docs
public protocol Plotable {
    func encode(toPlotly encoder: Encoder) throws
}


extension Array: Plotable where Element: Encodable {
    public func encode(toPlotly encoder: Encoder) throws {
        try encode(to: encoder)
    }
}


#if canImport(TensorFlow)
import TensorFlow

extension Tensor: Plotable where Scalar: Encodable {
    public func encode(toPlotly encoder: Encoder) throws {
        func encode(array: ShapedArraySlice<Scalar>,
                    to container: inout UnkeyedEncodingContainer) throws {
            if let scalar = array.scalar {
                try container.encode(scalar)
                return
            }

            var nestedContainer = container.nestedUnkeyedContainer()
            for slice in array {
                try encode(array: slice, to: &nestedContainer)
            }
        }

        if let scalar = self.scalar {
            var container = encoder.singleValueContainer()
            try container.encode(scalar)
            return
        } else {
            var container = encoder.unkeyedContainer()
            for slice in array {
                try encode(array: slice, to: &container)
            }
        }
    }
}
#endif
