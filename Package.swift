// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "tuistui",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "tuist-ui",
            targets: ["TuistUICLI"]
        ),
        .library(
            name: "TuistUI",
            targets: ["TuistUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/projectdescription", from: "3.28.0"),
    ],
    targets: [
        .executableTarget(
            name: "TuistUICLI",
            dependencies: [
                "TuistUI"
            ]
        ),
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
