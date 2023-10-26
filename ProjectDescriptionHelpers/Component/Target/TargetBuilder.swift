import ProjectDescription

@resultBuilder
public struct TargetBuilder {
    public static func buildBlock(_ targets: TargetConvertable...) -> [Target] {
        targets.map { $0.build() }
    }
    public static func buildBlock(_ targets: [TargetConvertable]) -> [Target] {
        targets.map { $0.build() }
    }
}
