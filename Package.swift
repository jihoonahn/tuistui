// swift-tools-version: 5.9
import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "TuistUI",
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
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.1")
    ],
    targets: [
        .macro(
            name: "TuistUIMacro",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                .product(name: "ProjectDescription", package: "ProjectDescription")
            ]
        ),
        .executableTarget(
            name: "TuistUICLI",
            dependencies: [
                "TuistUI"
            ]
        ),
        .target(
            name: "TuistUI",
            dependencies: [
                "TuistUIMacro"
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
