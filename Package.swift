// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Segment-Singular-iOS",
    platforms: [
        .iOS("8.0")
    ],
    products: [
        .library(
            name: "Segment-Singular-iOS",
            targets: ["Segment-Singular-iOS"]),
    ],
    dependencies: [
        .package(
            name: "Segment",
            url: "https://github.com/segmentio/analytics-ios",
            from: "4.1.8"
        ),
        .package(
            name: "Singular",
            url: "https://github.com/singular-labs/Singular-iOS-SDK.git",
            from: "12.0.7")
    ],
    targets: [
        .target(
            name: "Segment-Singular-iOS",
            dependencies: ["Segment", "Singular"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
