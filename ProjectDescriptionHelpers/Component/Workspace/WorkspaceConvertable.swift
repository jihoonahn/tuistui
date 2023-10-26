import ProjectDescription

public protocol WorkspaceConvertable {
    func build() -> ProjectDescription.Workspace
}
