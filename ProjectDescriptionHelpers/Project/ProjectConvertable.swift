import ProjectDescription

/// Convert ProjectDescription.Project Type
public protocol ProjectConvertable {
    func build() -> ProjectDescription.Project
}
