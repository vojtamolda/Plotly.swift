
# Internals

Plotly maintains a description of chart types in a large hierarchical JSON schema. To ensure compatibility with future versions, this directory contains an automatic code generation utility that translates the schema into Swift classes, structs, enums and primitives.

![Logo](https://images.ctfassets.net/k49d63tr8kcn/7Ay4DJqdtSoisK8iGMqqwk/8a2ff4a82f22d7764e2ea2152a56bc94/plotly.png)


## Building and Testing

Library exposes the targets required for building in the package manifest file. It can be built and executed from within [XCode](https://developer.apple.com/xcode/) or with standard [Swift Package Manager](https://swift.org/package-manager/) tools:

```shell script
$> swift run codegen
$> swift build
$> swift test 
```


## Implementation

Following Swift documentation is really helpful:
 - [Encoding and Decoding Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)
 - [Encodable](https://developer.apple.com/documentation/swift/encodable)

This paper very nicely explains how [plotly.py](https://github.com/plotly/plotly.py) works:
 - [Bringing ipywidgets Support to plotly.py](http://conference.scipy.org/proceedings/scipy2018/pdfs/jon_mease.pdf)
 