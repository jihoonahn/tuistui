// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "TuistUI",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "TuistUI",
            targets: ["TuistUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/ProjectAutomation", .upToNextMajor(from: "3.21.1"))
    ],
    targets: [
        .target(
            name: "TuistUI",
            dependencies: [
                .product(name: "ProjectAutomation", package: "ProjectAutomation")
            ]
        ),
        .testTarget(
            name: "TuistUITests",
            dependencies: ["TuistUI"]
        ),
    ]
)
