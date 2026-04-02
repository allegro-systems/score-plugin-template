// swift-tools-version: 6.3

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
        .package(url: "https://github.com/allegro-systems/score.git", branch: "main"),
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
