import ProjectDescription

/// Convert Target  Type
public protocol TargetConvertable {
    func build() -> Target
}

extension Target: TargetConvertable {
    public func build() -> Target {
        self
    }
}
