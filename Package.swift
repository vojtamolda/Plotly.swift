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
    dependencies: [
        .package(url: "https://github.com/yaslab/CSV.swift.git", .upToNextMinor(from: "2.4.2"))
    ],
    targets: [
        .target(
            name: "Plotly",
            dependencies: [],
            path: "Sources/Plotly"),
        .testTarget(
            name: "PlotlyTests",
            dependencies: ["Plotly", "CSV"]),
        .target(
            name: "codegen", 
            dependencies: [],
            path: "Sources/Codegen")
    ]
)
