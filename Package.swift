// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegmentSingular",
    platforms: [.iOS(.v8)],
    products: [.library(name: "SegmentSingular", targets: ["SegmentSingular"])],
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
            name: "SegmentSingular",
            dependencies: [
              "Segment",
              "Singular"
            ],
            path: "Segment-Singular/Classes",
            publicHeadersPath: ""
        )
    ]
)
