import ProjectDescription

// MARK: - TargetBuilder

@resultBuilder
public struct TargetBuilder {
    public static func buildBlock(_ targets: TargetBuildable...) -> [Target] {
        targets.map { $0.makeTarget() }
    }
    public static func buildBlock(_ targets: [TargetBuildable]) -> [Target] {
        targets.map { $0.makeTarget() }
    }
}
