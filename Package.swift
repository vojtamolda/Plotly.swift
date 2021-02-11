// swift-tools-version:5.1
import PackageDescription


let package = Package(
    name: "Plotly",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "Plotly",
            targets: ["Plotly"]),
    ],
    targets: [
        .target(
            name: "Plotly",
            dependencies: [],
            path: "Sources/Plotly"),
        .testTarget(
            name: "PlotlyTests",
            dependencies: ["Plotly"]),
        .target(
            name: "codegen", 
            dependencies: [],
            path: "Sources/Codegen")
    ]
)
