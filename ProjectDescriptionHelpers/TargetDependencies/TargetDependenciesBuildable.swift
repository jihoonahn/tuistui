import ProjectDescription

public protocol TargetDependenciesBuildable {
    func makeTargetDependency() -> TargetDependency
}
