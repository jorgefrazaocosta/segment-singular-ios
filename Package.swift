// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Segment-Singular",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "Segment-Singular",
            targets: ["segment-singular-ios"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/segmentio/analytics-ios.git", from: "4.1.8"),
        .package(url: "https://github.com/singular-labs/Singular-iOS-SDK.git", from: "12.0.7")
    ],
    targets: [
        .target(
            name: "Segment-Singular",
            path: "Segment-Singular-iOS",
            sources: [
                "Segment-Singular-iOS"
            ]
        )
    ]
)
