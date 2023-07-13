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
            targets: ["Segment-Singular"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/segmentio/analytics-ios.git", from: "4.1.8"),
    ],
    targets: [
        .target(
            name: "Segment-Singular",
            dependencies: [
                .product(name: "Analytics", package: "analytics-ios"),
                .product(name: "SingularSDK", package: "singular-sdk-ios")
            ],
            path: "Segment-Singular-iOS",
            sources: [
                "Segment-Singular-iOS" // Specify the folder containing your Swift source files
            ]
        )
    ]
)
