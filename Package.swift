// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "tuistui",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "TuistUI",
            targets: ["TuistUI"]
        ),
        .executable(
            name: "tuist-ui",
            targets: ["TuistUICLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/tuist/projectdescription", from: "3.34.0"),
    ],
    targets: [
        .executableTarget(name: "TuistUICLI"),
        .target(
            name: "TuistUI",
            dependencies: [
                 .product(name: "ProjectDescription", package: "ProjectDescription"),
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
