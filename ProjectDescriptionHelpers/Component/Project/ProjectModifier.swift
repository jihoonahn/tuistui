import ProjectDescription

public final class ProjectModifier: ProjectConvertable {
    public var name: String
    public var organizationName: String?
    public var options: ProjectDescription.Project.Options
    public var packages: [ProjectDescription.Package]
    public var targets: [ProjectDescription.Target]
    public var schemes: [ProjectDescription.Scheme]
    public var settings: ProjectDescription.Settings?
    public var fileHeaderTemplate: ProjectDescription.FileHeaderTemplate?
    public var additionalFiles: [ProjectDescription.FileElement]
    public var resourceSynthesizers: [ProjectDescription.ResourceSynthesizer]
    
    public init(
        name: String = "",
        organizationName: String? = nil,
        options: ProjectDescription.Project.Options = .options(),
        packages: [ProjectDescription.Package] = [],
        targets: [ProjectDescription.Target] = [],
        schemes: [ProjectDescription.Scheme] = [],
        settings: ProjectDescription.Settings? = nil,
        fileHeaderTemplate: ProjectDescription.FileHeaderTemplate? = nil,
        additionalFiles: [ProjectDescription.FileElement] = [],
        resourceSynthesizers: [ProjectDescription.ResourceSynthesizer] = []
    ) {
        self.name = name
        self.organizationName = organizationName
        self.options = options
        self.packages = packages
        self.targets = targets
        self.schemes = schemes
        self.settings = settings
        self.fileHeaderTemplate = fileHeaderTemplate
        self.additionalFiles = additionalFiles
        self.resourceSynthesizers = resourceSynthesizers
    }
}

extension ProjectModifier {
    public func build() -> ProjectDescription.Project {
        ProjectDescription.Project(
            name: name,
            organizationName: organizationName,
            options: options,
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes,
            fileHeaderTemplate: fileHeaderTemplate,
            additionalFiles: additionalFiles,
            resourceSynthesizers: resourceSynthesizers
        )
    }
}
