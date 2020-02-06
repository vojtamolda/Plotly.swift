<div align="center">
<br />
<img alt="Plotly" src="https://images.plot.ly/logo/new-branding/plotly-logomark.png" width="158">


<h1>Plotly.swift</h1>


<h3>Interactive chart library for Swift built on top of <a href="https://plot.ly">Plotly</a>.</h3>

<div>
  <a href="https://github.com/vojtamolda/Plotly.swift/actions">
    <img alt="Build Status" src="https://img.shields.io/github/workflow/status/vojtamolda/Plotly.swift/Swift%20Package.svg">
  </a>
  <a href="https://github.com/vojtamolda/Plotly.swift/release">
    <img alt="Release" src="https://img.shields.io/github/v/release/vojtamolda/Plotly.swift.svg?color=lightgrey">
   </a>
  <a href="https://en.wikipedia.org/wiki/MIT_License">
    <img alt="MIT License" src="https://img.shields.io/github/license/vojtamolda/Plotly.swift.svg?color=blue">
  </a>
  <a href="https://github.com/vojtamolda/Plotly.swift/issues">
    <img alt="Contributions Welcome" src="https://img.shields.io/badge/contributions-welcome-blueviolet.svg">
  </a>
  <a href="https://developer.apple.com/swift/">
    <img alt="Swift 5" src="https://img.shields.io/badge/swift-5-orange.svg">
  </a>
</div>

<div>
  <a href="#usage">Usage</a> • 
  <a href="#internals">Internals</a> • 
  <a href="#license">License</a>
</div>
</div>


Library that brings interactive [Plotly](https://plot.ly/javascript/) charts to [Swift](https://swift.org/). It is designed to be simple and easy to use thanks to the interface that follows the [Swift API design guidelines](https://swift.org/documentation/api-design-guidelines/).

The design goal is to display an interactive chart of your data as quickly as possible without compromising the more advanced use cases. The intention is to create a plotting tool that can be brought to the rescue in the middle of a debugging session. It is especially helpful to people who work with numeric code, like simulations, data science or machine learning.

---
**Warning**: _This package is in early alpha stage and the releases before version `1.0.0` doesn't follow [semantic versioning](https://semver.org/). Symbol and method names may and generally will change. Before the `1.0.0` release, the recommendation is to depend on `.exact("0.x.y")` version to make_ sure your code doesn't break later.


# Usage

## Jupyter Notebook
Copy and paste the following line into the first cell:

```swift
%install '.package(url: "https://github.com/vojtamolda/Plotly.swift.git", .exact("0.x.y"))' Plotly
```

## Package Dependency
To include the library as a part of your project, add the following dependency to your `Package.swift` manifest file:

```swift
dependencies: [
    .package(url: "https://github.com/vojtamolda/Plotly.swift.git", .exact("0.x.y")),
]
```

## Example Chart
Here's a simple example code that creates a line plot:

```swift
import Plotly

let scatter = Scatter(x: [1, 2, 3, 4], y: [2, 4, 1, 3], mode: .line)
let figure = Figure(data: [scatter])
figure.show()
```

<img src="https://images.plot.ly/plotly-documentation/images/output.png" alt="Example" width="60%">


# Internals

Internal infrastructure of the library is built on top of [Plotly.js](https://github.com/plotly/plotly.js) and [D3.js](https://d3js.org/) JavaScript packages. Under the hood, Swift instances of chart data, layout and configuration are converted to a serialized JSON representation, packaged and then sent to a browser. Browser is then responsible for rendering of the chart and it also handles user interaction events.
 
 There's about 30 types of charts, including scientific, 3D, statistical, financial and more.
![Demo](https://raw.githubusercontent.com/cldougl/plot_images/add_r_img/plotly_2017.png)

[Swift Package Manager](https://swift.org/package-manager/) is used for distribution, building, running and testing.


# License

Library is licensed under the MIT license. See [the text](License.txt) for more details.
