import ProjectDescription

@resultBuilder
public struct TargetBuilder {
    @inlinable
    public static func buildBlock(_ targets: TargetConvertable...) -> [Target] {
        targets.map { $0.build() }
    }
    @inlinable
    public static func buildBlock(_ targets: [TargetConvertable]) -> [Target] {
        targets.map { $0.build() }
    }
}
