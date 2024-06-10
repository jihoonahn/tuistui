import ProjectDescription

/// Protocols for organizing configurations in one place
public protocol ConfigurationType: Hashable, CaseIterable, RawRepresentable where RawValue == String {
    /// Specify the configuration path.
    var path: ProjectDescription.Path { get }

    /// Gets the name of the registered configuration.
    var configurationName: ConfigurationName { get }
}

extension ConfigurationType {
    public var configurationName: ConfigurationName {
        ConfigurationName(stringLiteral: rawValue)
    }
}
