// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "tuistui",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "tuist-ui",
            targets: ["TuistUICLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/tuist/tuist", from: "4.15.0"),
        .package(url: "https://github.com/apple/swift-log", .upToNextMajor(from: "1.5.4")),
    ],
    targets: [
        .executableTarget(name: "TuistUICLI"),
        .target(
            name: "TuistUI",
            dependencies: [
                 .product(name: "ProjectDescription", package: "tuist"),
            ],
            path: "ProjectDescriptionHelpers"
        ),
        .testTarget(
            name: "TuistUITests",
            dependencies: [
                "TuistUI"
            ],
            path: "Tests"
        ),
    ]
)
