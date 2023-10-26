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
}
