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
    @inlinable
    func fileHeaderTemplate(_ fileHeader: ProjectDescription.FileHeaderTemplate) -> Self {
        workspaceModifier.fileHeaderTemplate = fileHeader
        return self
    }
    @inlinable
    func additionalFile() -> Self {
        
        return self
    }
}
