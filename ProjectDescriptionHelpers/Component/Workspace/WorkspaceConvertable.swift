import ProjectDescription

/// Convert ProjectDescription.Workspace Type
public protocol WorkspaceConvertable {
    func build() -> ProjectDescription.Workspace
}
