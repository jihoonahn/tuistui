import ProjectDescription

@resultBuilder
public struct PackageBuilder {
    public static func buildBlock(_ packages: Package...) -> [Package] {
        packages
    }
    public static func buildBlock(_ packages: [Package]) -> [Package] {
        packages
    }
}
