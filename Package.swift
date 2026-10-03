// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwingAnimation",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SwingAnimation",
            targets: ["SwingAnimation"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/giljihun/ClockHandKit.git", from: "0.1.2")
    ],
    targets: [
        .target(
            name: "SwingAnimation",
            dependencies: [
                "ClockHandKit"
            ]
        ),
        .testTarget(
            name: "SwingAnimationTests",
            dependencies: ["SwingAnimation"]
        )
    ]
)
