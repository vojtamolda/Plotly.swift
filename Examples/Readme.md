
# Examples


Plotly supports more than 30 different kinds of graphs. This folder contains a few examples that showcase not only the chart types but also different technology stacks used to create and view them. It is by no means an exhaustive list.


## Jupyter Notebooks

- [`Blank.ipynb`] [![Colab Badge]][Colab Blank]
- [`Showcase.ipynb`] [![Colab Badge]][Colab Showcase]
- [`Color Scales.ipynb`] [![Colab Badge]][Colab Color Scales]
- [`Machine Learning.ipynb`] [![Colab Badge]][Colab Machine Learning]

By far the quickest way to get started is to open an example [Google Colaboratory] notebook with a Swift kernel via one of the buttons above.

![Colab Notebook Screenshot]

Running Swift code in [Jupyter] locally requires installing Swift kernel from the [swift-jupyter] project. After installing, the first line of the notebook has to download, build and link the Plotly module. Subsequent cells can then import and use the `Plotly` module.

```swift
%install '.package(url: "https://github.com/vojtamolda/Plotly.swift.git", branch("master"))' Plotly
```
```swift
import Plotly
```


## XCode Playgrounds

- [`Playground.xcworkspace`]

Getting Plotly working in Playgrounds requires a few extra steps but hopefully the situation will improve in the future. As of XCode 11 there's no support for importing [Swift Package Manager] (SPM) packages directly to Playgrounds. However, it is possible to work around this by generating an equivalent XCode project and use it place of the SPM package. The steps are described below.

![XCode Playground Screenshot]

1. Generate `Plotly.xcodeproj` project equivalent to `Package.swift` with the following command.
    ```shell
    swift project generate-xcodeproj
    ```
2. Open  `Playground.xcworkspace` in XCode. The example blindly references `Plotly.xcodeproj` that doesn't normally exist in the repository. If you are creating your own workspace from scratch then click on *File* -> *Add Files ...* menu and navigate to `Plotly.xcodeproj` file that has been created in the root of the repository.
3. Select `Plotly-Package` scheme and then manually build it via *Product* -> *Build* menu. This is necessary to make `import Plotly` work. Unless the library is built first, the playground code will fail to compile because it won't be able to locate Plotly module binaries.
4. Enjoy and run the code in the demo playground! The key trick is the last line. It sets the `liveView` property of the current Playground page to a view containing the figure.





[`Blank.ipynb`]: Notebooks/Blank.ipynb
[Colab Blank]: https://colab.research.google.com/github/vojtamolda/Plotly.swift/blob/master/Examples/Notebooks/Blank.ipynb

[`Showcase.ipynb`]: Notebooks/Showcase.ipynb
[Colab Showcase]: https://colab.research.google.com/github/vojtamolda/Plotly.swift/blob/master/Examples/Notebooks/Showcase.ipynb

[`Color Scales.ipynb`]: Notebooks/Color%20Scales.ipynb
[Colab Color Scales]: https://colab.research.google.com/github/vojtamolda/Plotly.swift/blob/master/Examples/Notebooks/Color%20Scales.ipynb

[`Machine Learning.ipynb`]: Notebooks/Machine%20Learning.ipynb
[Colab Machine Learning]: https://colab.research.google.com/github/vojtamolda/Plotly.swift/blob/master/Examples/Notebooks/Machine%20Learning.ipynb

[Colab Badge]: https://colab.research.google.com/assets/colab-badge.svg "Run in Google Colab"
[Colab Notebook Screenshot]: Notebooks.png "Colab Notebook Screenshot"
[Google Colaboratory]: https://colab.research.google.com/
[swift-jupyter]: https://github.com/google/swift-jupyter
[Jupyter]: https://jupyter.org/


[`Playground.xcworkspace`]: Playgrounds/Playground.playground/Contents.swift
[XCode Playground Screenshot]: Playgrounds.png "XCode Playgrounds Screenshot"
[Swift Package Manager]: https://swift.org/package-manager/
