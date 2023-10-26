import ProjectDescription

public final class WorkspaceModifier: WorkspaceConvertable {
    public var name: String
    public var projects: [ProjectDescription.Path]
    public var schemes: [ProjectDescription.Scheme]
    public var fileHeaderTemplate: ProjectDescription.FileHeaderTemplate?
    public var additionalFiles: [ProjectDescription.FileElement]
    public var generationOptions: ProjectDescription.Workspace.GenerationOptions
    
    
    public init(
        name: String = "",
        projects: [ProjectDescription.Path] = [],
        schemes: [ProjectDescription.Scheme] = [],
        fileHeaderTemplate: ProjectDescription.FileHeaderTemplate? = nil,
        additionalFiles: [ProjectDescription.FileElement] = [],
        generationOptions: ProjectDescription.Workspace.GenerationOptions = .options()
    ) {
        self.name = name
        self.projects = projects
        self.schemes = schemes
        self.fileHeaderTemplate = fileHeaderTemplate
        self.additionalFiles = additionalFiles
        self.generationOptions = generationOptions
    }
    
    public func build() -> ProjectDescription.Workspace {
        return ProjectDescription.Workspace(
            name: name,
            projects: projects,
            schemes: schemes,
            fileHeaderTemplate: fileHeaderTemplate,
            additionalFiles: additionalFiles,
            generationOptions: generationOptions
        )
    }
}
