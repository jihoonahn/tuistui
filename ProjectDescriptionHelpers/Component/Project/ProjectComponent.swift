import ProjectDescription

public struct Project<Content>: Module where Content: TargetConvertable {
    public let projectModifier = ProjectModifier()

    public init(@TargetBuilder content: () -> [Content]) {
        projectModifier.targets = content().map { $0.build() }
    }

    public func makeModule(_ name: String) -> Any {
        projectModifier.name = name
        return projectModifier.build()
    }
}

public extension Project {
    /// organizationName
    @inlinable
    func organizationName(_ name: String) -> Self {
        projectModifier.organizationName = name
        return self
    }
    /// Package Set up
    @inlinable
    func package(@PackageBuilder packages: () -> [Package]) -> Self {
        projectModifier.packages = packages()
        return self
    }
    /// option Set up
    @inlinable
    func option(options: ProjectDescription.Project.Options) -> Self {
        projectModifier.options = options
        return self
    }
    /// scheme Set up
    @inlinable
    func scheme(@SchemeBuilder scheme: () -> [ProjectDescription.Scheme]) -> Self {
        projectModifier.schemes = scheme()
        return self
    }
    /// project type setting
    @inlinable
    func settings(_ setting: Settings? = nil) -> Self {
        projectModifier.settings = setting
        return self
    }
    /// fileHeaderTemplate Set up
    @inlinable
    func fileHeaderTemplate(_ fileHeader: FileHeaderTemplate) -> Self {
        projectModifier.fileHeaderTemplate = fileHeader
        return self
    }
    /// additionalFiles Set up
    @inlinable
    func additionalFile(@FileElementBuilder additionalFile: () -> [FileElement]) -> Self {
        projectModifier.additionalFiles = additionalFile()
        return self
    }
    /// resourceSynthesizers Set up
    @inlinable
    func resourceSynthesizer(_ resourceSynthesizer: [ResourceSynthesizer]) -> Self {
        projectModifier.resourceSynthesizers = resourceSynthesizer
        return self
    }
}
