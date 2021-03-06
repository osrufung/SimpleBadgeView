// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimpleBadgeView",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SimpleBadgeView",
            targets: ["SimpleBadgeView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "SnapshotTesting", url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.8.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SimpleBadgeView",
            dependencies: []),
        .testTarget(
            name: "SimpleBadgeViewTests",
            dependencies: ["SimpleBadgeView", "SnapshotTesting"]),
    ]
)
