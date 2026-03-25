// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "ScorePluginTemplate",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(name: "ScorePluginTemplate", targets: ["ScorePluginTemplate"]),
    ],
    dependencies: [
        .package(path: "../../score"),
    ],
    targets: [
        .target(
            name: "ScorePluginTemplate",
            dependencies: [
                .product(name: "Score", package: "score"),
            ]
        ),
        .testTarget(
            name: "ScorePluginTemplateTests",
            dependencies: ["ScorePluginTemplate"]
        ),
    ]
)
