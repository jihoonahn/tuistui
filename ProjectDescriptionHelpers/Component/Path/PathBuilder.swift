import ProjectDescription

@resultBuilder
public struct PathBuilder {
    @inlinable
    public static func buildBlock() -> [Path] {
        []
    }
    @inlinable
    public static func buildBlock(_ paths: PathConvertable...) -> [Path] {
        paths.map { $0.build() }
    }
    @inlinable
    public static func buildBlock(_ paths: [PathConvertable]) -> [Path] {
        paths.map { $0.build() }
    }
    @inlinable
    public static func buildOptional(_ wrapped: [PathConvertable]?) -> [Path]? {
        wrapped?.map { $0.build() }
    }
}
