import ProjectDescription

public struct Workspace<Content>: Module where Content: PathConvertable {
    public let workspaceModifier = WorkspaceModifier()
    
    public init(@PathBuilder content: () -> [Content]) {
        workspaceModifier.projects = content().map { $0.build() }
    }
    
    public func makeModule(_ name: String) -> Any {
        workspaceModifier.name = name
        return workspaceModifier.build()
    }
}

public extension Workspace {
    @inlinable
    func scheme(@SchemeBuilder scheme: () -> [ProjectDescription.Scheme]) -> Self {
        workspaceModifier.schemes = scheme()
        return self
    }
    /// fileHeaderTemplate Set up
    @inlinable
    func fileHeaderTemplate(_ fileHeader: FileHeaderTemplate) -> Self {
        workspaceModifier.fileHeaderTemplate = fileHeader
        return self
    }
    /// additionalFiles Set up
    @inlinable
    func additionalFile(@FileElementBuilder additionalFile: () -> [FileElement]) -> Self {
        workspaceModifier.additionalFiles = additionalFile()
        return self
    }
    /// generationOption Set up
    @inlinable
    func generationOption(_ option: ProjectDescription.Workspace.GenerationOptions) -> Self {
        workspaceModifier.generationOptions = option
        return self
    }
}
