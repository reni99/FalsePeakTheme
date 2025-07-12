// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FalsePeakTheme",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "FalsePeakTheme",
            targets: ["FalsePeakTheme"]
        ),
    ],
    targets: [
        .target(
            name: "FalsePeakTheme",
            resources: [
                .process("Colors.xcassets"),
                .process("Assets.xcassets"),
                .process("Fonts")
            ]
        ),
        .testTarget(
            name: "FalsePeakThemeTests",
            dependencies: ["FalsePeakTheme"]
        ),
    ]
)
