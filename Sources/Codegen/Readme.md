
# Code Generation

Plotly maintains a description of chart types in a large hierarchical JSON schema. To ensure compatibility with future versions, this directory contains an automatic code generation utility that translates the schema into Swift classes, structs, enums and primitives.

![Logo](https://mateusfsilvablog.files.wordpress.com/2018/03/11-swift-json.png)


## Usage

To generate fresh Swift code from a new schema located in the [`Assets/Plotly.json`](Assets/Plotly.json) file run the following commands without any optional command line arguments:

```shell script
$> python order.py [PLOTLY_SCHEMA] [SWIFT_ORDER]
$> swift run codegen [PLOTLY_SCHEMA] [SWIFT_ORDER] [OUTPUT_DIR]
```

The optional arguments can be used to customize location of inputs and outputs:
 - `PLOTLY_SCHEMA` - Plotly schema file JSON (default: [`Assets/Plotly.json`](Assets/Plotly.json))
 - `SWIFT_ORDER` - Swift member order JSON file (default: [`Assets/Order.json`](Assets/Order.json))
 - `OUTPUT_DIR` - Output directory for generated Swift code (default: [`/Sources/Plotly/Schema/`](../Plotly/Schema/)).

The defaults fit the structure of the repository directory structure. Generally, they don't need to be changed when the commands run from `Sources/Codegen` directory.


## Building

The `Codegen` utility is exposed as a target in the package manifest file. It can be built and executed from within [XCode](https://developer.apple.com/xcode/) or with standard [Swift Package Manager](https://swift.org/package-manager/) tools:

```shell script
$> swift build 
```


## Implementation

Code generation process itself is also written in Swift to allow other developers to easily contribute and understand the whole pipeline. It is a little bit confusing to read at first because the Swift code here is actually only a tool that generates Swift code used in the actual Plotly.swift library.

Plotly schema introduces a type system used for all attributes that can be leveraged to create an appealing and easy to use equivalent Swift API with a natural feel.

On the top level, the code generation process is similar to what is implemented in the Python counterpart [plotly.py](https://github.com/plotly/plotly.py/). Because Swift is a strongly typed language and lot of the parameter validation code that can be seen there can be avoided thanks to types.

Parsing of the schema is based on [`Codable`](https://developer.apple.com/documentation/swift/codable) prototype that makes it easy to create a hierarchy if structures that match the JSON.

Following Swift documentation is really helpful:
 - [Encoding and Decoding Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)
 - [Decodable](https://developer.apple.com/documentation/swift/decodable)

This paper very nicely explains how [plotly.py](https://github.com/plotly/plotly.py) works:
 - [Bringing ipywidgets Support to plotly.py](http://conference.scipy.org/proceedings/scipy2018/pdfs/jon_mease.pdf)
