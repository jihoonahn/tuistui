import ProjectDescription

public protocol TargetBuildable {
    func makeTarget() -> Target
}
