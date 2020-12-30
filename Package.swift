// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ReusableCell",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "ReusableCell",
            targets: ["ReusableCell"])
    ],
    targets: [
        .target(
            name: "ReusableCell",
            dependencies: [])
    ]
)
