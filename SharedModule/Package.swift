// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedModule",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SharedModule",
            targets: ["SharedModule"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/apple/swift-log.git", from: "1.6.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SharedModule",
            dependencies: [
//                .product(name: "Logging", package: "swift-log")
            ]),
        .testTarget(
            name: "SharedModuleTests",
            dependencies: ["SharedModule"]),
    ]
)
