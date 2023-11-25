// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftBTC",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v15)
    ],
    products: [
        .library(
            name: "SwiftBTC",
            targets: ["SwiftBTC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt", .upToNextMajor(from: "5.3.0"))
    ],
    targets: [
        .target(
            name: "SwiftBTC",
            dependencies: [
                .product(name: "BigInt", package: "BigInt")
            ]
        ),
        .testTarget(
            name: "SwiftBTCTests",
            dependencies: [
                "SwiftBTC",
                .product(name: "BigInt", package: "BigInt")
            ]
        ),
    ]
)
