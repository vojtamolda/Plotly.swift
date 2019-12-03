
# Plotly.swift

Library that brings interactive [Plotly](https://plot.ly/javascript/) charts to [Swift](https://swift.org/). It is designed to be simple and easy to use thanks to the interface that follows the [Swift API design guidelines](https://swift.org/documentation/api-design-guidelines/).

![Logo](https://upload.wikimedia.org/wikipedia/commons/3/37/Plotly-logo-01-square.png)

The design goal is to display an interactive chart of your data as quickly as possible without compromising the more advanced use cases. The intention is to create a plotting tool that can be brought to the rescue in the middle of a debugging session. It is especially helpful to people who work with numeric code, like simulations, data science or machine learning.

---
**Warning**: _This package is in early alpha stage and the releases before version `1.0.0` doesn't follow [semantic versioning](https://semver.org/). Symbol and method names may and generally will change. Before the `1.0.0` release, the recommendation is to depend on `.exact("0.x.y")` version to make_ sure your code doesn't break later.


## Usage

### Jupyter Notebook
Copy and paste the following lines into the first cell:

```swift
%install '.package(url: "https://github.com/vojtamolda/Plotly.swift.git", .exact("0.x.y"))' Plotly
%include "EnableJupyterDisplay.swift"
```

### Package Dependency
To include the library as a part of your project, add the following dependency to your `Package.swift` manifest file:

```swift
dependencies: [
    .package(url: "https://github.com/vojtamolda/Plotly.swift.git", .exact("0.x.y")),
]
```

### Example Chart
Here's a simple example code that creates a line plot:

```swift
import Plotly

let scatter = Scatter(x: [1, 2, 3, 4], y: [2, 4, 1, 3], mode: .line)
let figure = Figure(data: [scatter])
figure.show()
```

<img src="https://images.plot.ly/plotly-documentation/images/output.png" alt="Example" width="60%">


## Internals

Internal infrastructure of the library is built on top of [Plotly.js](https://github.com/plotly/plotly.js) and [D3.js](https://d3js.org/) JavaScript packages. Under the hood, Swift instances of chart data, layout and configuration are converted to a serialized JSON representation, packaged and then sent to a browser. Browser is then responsible for rendering of the chart and it also handles user interaction events.
 
 There's about 30 types of charts, including scientific, 3D, statistical, financial and more.
![Demo](https://raw.githubusercontent.com/cldougl/plot_images/add_r_img/plotly_2017.png)

[Swift Package Manager](https://swift.org/package-manager/) is used for distribution, building, running and testing.


## License

Library is licensed under the MIT license. See [the text](License.txt) for more details.
