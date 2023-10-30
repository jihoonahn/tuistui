import ProjectDescription

/// Convert Path  Type
public protocol PathConvertable {
    func build() -> Path
}

extension Path: PathConvertable {
    public func build() -> Path {
        self
    }
}
