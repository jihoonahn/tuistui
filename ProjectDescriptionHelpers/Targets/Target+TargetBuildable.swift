import ProjectDescription

extension Target: TargetBuildable {
    public func makeTarget() -> Target {
        return self
    }
}
