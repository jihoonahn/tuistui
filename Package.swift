// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TuistUI",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "tuist-ui",
            targets: ["TuistUI"]),
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "TuistUI"
        ),
        .testTarget(
            name: "TuistUITests",
            dependencies: ["TuistUI"]
        ),
    ]
)
