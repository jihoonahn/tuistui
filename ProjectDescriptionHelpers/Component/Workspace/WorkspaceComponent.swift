import ProjectDescription

public struct Workspace<Content: TargetRepresentable>: Module {
    let content: [Content]
    
    public init(@TargetBuilder content: () -> [Content]) {
        self.content = content()
    }
    
    public func makeModule() -> Any {
        let path = self.content.map { $0.makeTargetPath() }
        return ProjectDescription.Workspace(name: "", projects: path)
    }
}
