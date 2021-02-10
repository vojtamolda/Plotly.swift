
# Code Generation


[Plotly.swift] is composed of two parts arranged as a pipeline. First, the code generation reads a JSON schema and transforms it into an equivalent Swift data structure. The rest of the library is then responsible for building the publicly visible API around the generated code. When the API is used to display a chart, the chart is transformed into an equivalent JSON that matches the schema. The JSON data is then passed to [Plotly.js] that is responsible for rendering and handling of user interactions.

The following document describes the first half of the pipeline.

![Swift JSON]


## Motivation

To ensure compatibility with future versions and simplify maintenance, this directory contains an automatic code generation utility that translates the schema into Swift classes, structs and enums. From the birds eye perspective, the utility reads JavaScript internal specification blueprints and uses them to generate equivalent Swift code. The generated code is later forms a building block of the public API.

![Birds Eye View Diagram]

[Plotly.js] maintains a description of every chart type in a large hierarchical JSON schema. The schema includes the names of all valid properties and information about their acceptable values. The schema is originally intended as a basis for a REST API but thanks to the typed values, it can be used to generate a complete Swift object hierarchy corresponding to the structure of the schema.

While the code generation brings many benefits it also has it's downsides. In particular, it makes a one-off specialized modifications a bit more difficult because modifications to the source code have to be done indirectly by updating the code generation process instead of a simple edit.


## Implementation

The code generation utility itself is intentionally also written in Swift. This allows other developers to easily contribute and understand the whole pipeline from start to end. The first look at the code can be a bit confusing because there is a lot of name collision between variables and Swift built-ins.

Besides specification of the traces and other helper objects, the schema also contains a built-in a type system that is used by all properties. JavaScripts is an untyped language and it's conventions differ quite a bit from the Swift ones. This makes designing a well working interoperability a challenge. The type system makes the challenge much easier because it can be leveraged to create an appealing, consistent and easy to use strongly typed API. At the end of the process, the objects are still equivalent to their JavaScript parents in terms of functionality but they gain a naturally strongly typed feel.

The following diagram shows how Swift code is generated from the Plotly JSON schema in detail.

![Overview Diagram]

Parsing of the schema is based on [`Decodable`] protocol that is built into the [Swift Standard Library]. A hierarchy of types conforming to the [`Decodable`] protocol is unraveled as a relatively small number of high-level structs that represent the entire schema. The raw decoded types have their definitions located in the `Predefined` namespace. The rest of the source code that handles the decoding is in the `Schema/` folder.

After decoding each data type undergoes a transformation process that adds the type information and infers the properties required for generating the Swift counterpart. There is a significant amount of workarounds and exceptions to general rules but these are isolated to a few specific places to make their maintenance less of a burden. Data types that have undergone the transformation have their definitions in the `Generated` namespace.

![Data Types Diagram]

The most complicated part of the code generation is the detection of structures that should be shared between different larger objects. Like in every codebase, larger objects like traces are built from a smaller helper data types. These helper data types naturally appear in multiple places. This is more or less irrelevant to JavaScript due to the lack of typing. However, in Swift multiple definitions of a type with the same functionality hurt usability. For instance, each trace can be hidden by setting its `Visible` enum. If the enum isn't the same data type everywhere it is needlessly difficult to write code to simultaneously hide multiple traces by setting their `.visible` property to the same variable.

The Python parts of the code generation can be, for the most part, ignored. They perform a relatively simple pre-processing and identifier translation from _mashedtogether_ to _camelCased_. The reason why they exist is to workaround Swift dictionaries that are unordered by design. Using Python allows the generated code to maintain the same ordering of structure properties as does the original JSON schema. This is irrelevant for building but it makes navigating around the codebase simpler for people who already know Plotly in other languages.

Following Swift documentation is really helpful to understand how the JSON schema decoded as Swift objects.
- [Decodable Protocol][`Decodable`]
- [Decoding Custom Types]


## Usage

To generate fresh Swift code from and update the schema located in the [`Assets/Plotly.json`] file, run the following commands without any optional command line arguments:

```shell
python3 plotly.py [PLOTLY_SCHEMA]
python3 order.py [PLOTLY_SCHEMA] [SWIFT_ORDER]
python3 names.py [PLOTLY_SCHEMA] [SWIFT_NAME]
swift run codegen [PLOTLY_SCHEMA] [SWIFT_ORDER] [SWIFT_NAME] [OUTPUT_DIR]
```

The defaults fit the repository directory structure. Generally, they don't need to be changed when the commands are executed from `Sources/Codegen` directory.

The optional arguments can be used to customize location of inputs and outputs:
 - `PLOTLY_SCHEMA` - Plotly schema file JSON (default: [`Assets/Plotly.json`])
 - `SWIFT_ORDER` - Swift member order JSON file (default: [`Assets/Order.json`])
 - `SWIFT_NAME` - Swift translated names JSON file (default: [`Assets/Name.json`])
 - `OUTPUT_DIR` - Output directory for generated Swift code (default: [`/Sources/Plotly/`]).

The `Codegen` utility is exposed as a target in the package manifest file which can be opened in [XCode]. Building and executing the utility this way results in a very quick and convenient edit-build-debug cycle.





[Plotly.swift]: https://github.com/vojtamolda/Plotly.swift/
[Plotly.py]: https://github.com/plotly/plotly.py/
[Plotly.js]: https://github.com/plotly/plotly.js/

[Swift JSON]: https://t1.daumcdn.net/cfile/tistory/9905A133599248C827 "Swift & JSON"

[Birds Eye View Diagram]: https://raw.githubusercontent.com/vojtamolda/Plotly.swift/main/Examples/Diagrams/Codegen%20-%20Bird%20Eye%20View.png "Birds Eye View Diagram"
[Overview Diagram]: https://raw.githubusercontent.com/vojtamolda/Plotly.swift/main/Examples/Diagrams/Codegen%20-%20Overview.png "Overview Diagram"
[Data Types Diagram]: https://raw.githubusercontent.com/vojtamolda/Plotly.swift/main/Examples/Diagrams/Codegen%20-%20Data%20Types.png "Data Types Diagram"

[Swift Standard Library]: https://developer.apple.com/documentation/swift/swift_standard_library
[`Decodable`]: https://developer.apple.com/documentation/swift/decodable
[Decoding Custom Types]: https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types

[`Assets/Plotly.json`]: Assets/Plotly.json
[`Assets/Order.json`]: Assets/Order.json
[`Assets/Name.json`]: Assets/Name.json
[`/Sources/Plotly/`]: ../Plotly/

[XCode]: https://developer.apple.com/xcode/
