import ProjectDescription

@resultBuilder
public struct PackageBuilder {
    @inlinable
    public static func buildBlock(_ packages: Package...) -> [Package] {
        packages
    }
    @inlinable
    public static func buildBlock(_ packages: [Package]) -> [Package] {
        packages
    }
}
