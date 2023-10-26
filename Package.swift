// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TuistUI",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "tuist-ui",
            targets: ["TuistUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/projectdescription", from: "3.28.0"),
    ],
    targets: [
        .target(
            name: "TuistUI",
            dependencies: [
                 .product(name: "ProjectDescription", package: "ProjectDescription"),
            ],
            path: "ProjectDescriptionHelpers"
        ),
        .testTarget(
            name: "TuistUITests",
            dependencies: ["TuistUI"]
        ),
    ]
)
