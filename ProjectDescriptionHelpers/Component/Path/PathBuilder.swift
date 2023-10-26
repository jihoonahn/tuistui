import ProjectDescription

@resultBuilder
public struct PathBuilder {
    public static func buildBlock(_ paths: PathConvertable...) -> [Path] {
        paths.map { $0.build() }
    }
    public static func buildBlock(_ paths: [PathConvertable]) -> [Path] {
        paths.map { $0.build() }
    }
}
