import ProjectDescription

/// Convert Target  Type
public protocol TargetConvertable {
    func build() -> ProjectDescription.Target
}

extension ProjectDescription.Target: TargetConvertable {
    public func build() -> ProjectDescription.Target {
        self
    }
}
