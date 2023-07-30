import ProjectDescription

// MARK: - TargetBuilder

@resultBuilder
public struct TargetDependencyBuilder {
    public static func buildBlock(_ targets: TargetDependenciesBuildable...) -> [TargetDependency] {
        targets.map { $0.makeTargetDependency() }
    }
    public static func buildBlock(_ targets: [TargetDependenciesBuildable]) -> [TargetDependency] {
        targets.map { $0.makeTargetDependency() }
    }
}
