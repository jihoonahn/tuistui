import ProjectDescription

public protocol PathConvertable {
    func build() -> Path
}

extension Path: PathConvertable {
    public func build() -> Path {
        self
    }
}
