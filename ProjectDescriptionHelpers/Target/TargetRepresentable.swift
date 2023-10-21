import ProjectDescription

public protocol TargetRepresentable {
    func makeTarget() -> Target
    func makeTargetDependency() -> TargetDependency
    func makeTargetPath() -> Path
}
