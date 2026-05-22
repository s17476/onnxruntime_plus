// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "onnxruntime_plus",
    platforms: [
        .macOS("10.14")
    ],
    products: [
        .library(name: "onnxruntime-plus", targets: ["onnxruntime_plus"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .binaryTarget(
            name: "onnxruntimeMacOS",
            path: "onnxruntime_macos.xcframework"
        ),
        .target(
            name: "onnxruntime_plus",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                "onnxruntimeMacOS"
            ],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        )
    ]
)