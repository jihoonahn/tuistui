import ProjectDescription

@resultBuilder
public struct TargetBuilder {
    @inlinable
    public static func buildBlock() -> [ProjectDescription.Target] {
        []
    }
    @inlinable
    public static func buildBlock(_ targets: TargetConvertable...) -> [ProjectDescription.Target] {
        targets.map { $0.build() }
    }
    @inlinable
    public static func buildBlock(_ targets: [TargetConvertable]) -> [ProjectDescription.Target] {
        targets.map { $0.build() }
    }
    @inlinable
    public static func buildOptional(_ wrapped: [TargetConvertable]?) -> [ProjectDescription.Target]? {
        wrapped?.map { $0.build() }
    }
}
