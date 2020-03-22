
# Plotly.swift


[![Build Badge]][Build]  [![Release Badge]][Release]  [![Contributions Badge]][Contributions]
[![License Badge]][License]  [![Lifecycle Badge]][Lifecycle]  [![Swift Badge]][Swift]

**Interactive chart library for Swift built on top of [Plotly].**

[Plotly.swift] brings professional graphs to the nascent [Swift numerical][Swift Numerics] [computing ecosystem][Swift for TensorFlow]. Charts can be viewed in Jupyter notebooks or as standalone HTML files. Codebase has no external dependencies and can be easily used to visualize data in the middle of a complicated debugging session.


## Example

The following code creates a combined line and bar plot and displays the figure.

<img alt="Example" align="right" height="320" src="https://github.com/vojtamolda/Plotly.swift/blob/master/Examples/Example.png?raw=true">

```swift
 
import Plotly
 
 
let x = [1, 2, 3, 4]
let y = [10, 15, 13, 17]
 
let scatter = Scatter(name: "Scatter", x: x, y: y)
let bar = Bar(name: "Bar", x: x, y: y)
 
let figure = Figure(data: [scatter, bar])
figure.show()  // figure.display() in Jupyter notebook
 
 
```

You can find examples of more than 30 built-in chart types in the [`Examples/`] directory or in the [`Showcase.ipynb`] notebook. The fastest way to get started with your own chart is a Google Colab notebook with a Swift kernel.  [![Colab Badge]][Colab Blank]


## Installation

Project uses [Swift Package Manager] for distribution, building, running and testing. PRs implementing support for other packaging or distribution methods are welcome.

### Jupyter Notebook
To create a figure and display it in your notebook running a [Jupyter Swift kernel], copy and paste the following starter code to the first cell. Then use `Figure.display()` method to interactively embed any graph into the notebook.

```swift
%install '.package(url: "https://github.com/vojtamolda/Plotly.swift.git", .exact("0.2.0"))' Plotly
%include "EnableIPythonDisplay.swift"
```

### Project Dependency
To bundle the library and create charts in your own project, add the following dependency to your `Package.swift` manifest. Calling `Figure.show()` then displays the figure in a browser window.

```swift
dependencies: [
    .package(url: "https://github.com/vojtamolda/Plotly.swift.git", .exact("0.2.0")),
]
```


## Documentation

Full reference user documentation can be found [here][Reference Documentation]. Text is adapted from JavaScript and therefore may require some imaginative translation in order to be applicable. In particular, all originally _mashedtogether_ identifiers are _camelCased_ to match conventions and user expectations in Swift.

Public interface of the library follows the [Swift API Design Guidelines]. Primary design goal is to provide a beautiful API that can show an interactive chart of your data as quickly as possible without compromising more advanced use cases.

If you're interested in the inner workings of the library [Code Generation] and [Internals] readme files contain detailed description of how the sausage is really made.


## Release

Library is in early beta stage and the releases before version `1.0.0` doesn't follow [Semantic Versioning]. Symbol and method names may and generally will change. Before the `1.0.0` release, the recommendation is to depend on `.exact("0.x.y")` version to make sure your code doesn't break due to backward incompatible changes in the API.

Licensed under the GPL license. See [the text][License] for more details.



[Plotly]: https://plot.ly/
[Plotly.swift]: https://github.com/vojtamolda/Plotly.swift/

[Build Badge]: https://img.shields.io/github/workflow/status/vojtamolda/Plotly.swift/Swift%20Package.svg "Build"
[Build]: https://github.com/vojtamolda/Plotly.swift/actions

[Release Badge]: https://img.shields.io/github/v/release/vojtamolda/Plotly.swift.svg?color=lightgrey "Release"
[Release]: https://github.com/vojtamolda/Plotly.swift/releases

[Contributions Badge]: https://img.shields.io/badge/contributions-welcome-blueviolet.svg "Contributions Welcome"
[Contributions]: https://github.com/vojtamolda/Plotly.swift/issues

[License Badge]: https://img.shields.io/github/license/vojtamolda/Plotly.swift.svg?color=yellow "GPL License"
[License]: https://github.com/vojtamolda/Plotly.swift/blob/master/License.txt

[Lifecycle Badge]: https://img.shields.io/badge/lifecycle-maturing-blue.svg "Lifecycle"
[Lifecycle]: https://www.tidyverse.org/lifecycle/#maturing

[Swift Badge]: https://img.shields.io/badge/swift-5-orange.svg "Swift 5"
[Swift]: https://swift.org/blog/swift-5-released/

[Swift Numerics]: https://swift.org/blog/numerics/
[Swift for TensorFlow]: https://www.tensorflow.org/swift/

[Colab Badge]: https://colab.research.google.com/assets/colab-badge.svg "Google Colab"
[Colab Blank]: https://colab.research.google.com/github/vojtamolda/Plotly.swift/blob/master/Examples/Notebooks/Blank.ipynb 
[`Showcase.ipynb`]: https://colab.research.google.com/github/vojtamolda/Plotly.swift/blob/master/Examples/Notebooks/Showcase.ipynb 
[`Examples/`]: https://github.com/vojtamolda/Plotly.swift/blob/master/Examples/
[Jupyter Swift kernel]: https://github.com/google/swift-jupyter

[Swift Package Manager]: https://swift.org/package-manager/
[Swift API Design Guidelines]: https://swift.org/documentation/api-design-guidelines/

[Code Generation]: https://github.com/vojtamolda/Plotly.swift/blob/master/Sources/Codegen/Readme.md
[Internals]: https://github.com/vojtamolda/Plotly.swift/blob/master/Sources/Plotly/Readme.md

[Reference Documentation]: https://vojtamolda.github.io/Plotly.swift/
[Semantic Versioning]: https://semver.org/
