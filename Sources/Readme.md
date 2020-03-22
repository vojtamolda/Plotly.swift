
# Sources


[Plotly.swift] is composed of two parts arranged as a pipeline. First, the code generation reads a JSON schema and transforms it into an equivalent Swift data structure. The rest of the library is then responsible for building the publicly visible API around the generated code. When the API is used to display a chart, the chart is transformed into an equivalent JSON that matches the schema. The JSON data is then passed to [Plotly.js] that is responsible for rendering and handling of user interactions.


## Code Generation - [`Sources/Codegen/`]

This directory contains a utility that generates building blocks for the public API. It reads a JSON schema and outputs it's equivalent in Swift. This process maintains compatibility with the JavaScript code that's ultimately responsible for rendering of the charts.


## Plotly - [`Sources/Plotly/`]

This directory contains the public facing API. Unless you want to contribute a feature, this is the code you're looking for. There are automatic tests in place to keep the code is always up to date with the rest of the pipeline.


## Tests - [`Tests/`]

Nobody writes these so who would read them, right? For the time being this is the best bet if you're looking for an example of a particular chart type ;)





[Plotly.swift]: https://github.com/vojtamolda/Plotly.swift/
[Plotly.js]: https://github.com/plotly/plotly.js/

[`Sources/Codegen/`]: https://github.com/vojtamolda/Plotly.swift/tree/master/Sources/Codegen/
[`Sources/Plotly/`]: https://github.com/vojtamolda/Plotly.swift/tree/master/Sources/Plotly/
[`Tests/`]: https://github.com/vojtamolda/Plotly.swift/tree/master/Tests/
