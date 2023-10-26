import ProjectDescription

public protocol ProjectConvertable {
    func build() -> ProjectDescription.Project
}
