import ProjectDescription

@resultBuilder
public struct PathBuilder {
    @inlinable
    public static func buildBlock(_ paths: PathConvertable...) -> [Path] {
        paths.map { $0.build() }
    }
    @inlinable
    public static func buildBlock(_ paths: [PathConvertable]) -> [Path] {
        paths.map { $0.build() }
    }
}
