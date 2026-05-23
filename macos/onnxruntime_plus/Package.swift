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
            url: "https://raw.githubusercontent.com/Masum-MSNR/onnxruntime_plus/spm-artifacts-1.4.2/macos/onnxruntime_plus/onnxruntime_macos.xcframework.zip",
            checksum: "ffe45ed7114a178d9fc2eb9eac67a5cb534133f37c8e4aaa9eb7266a400fdc28"
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