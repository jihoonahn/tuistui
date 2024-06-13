import ProjectDescription

/// A Protocol for configuring the Xcconfig file
public protocol XCConfigDeployTargetType: Hashable, CaseIterable, RawRepresentable where RawValue == String {
    /// Gets the name of the registered configuration.
    var configurationName: ConfigurationName { get }
}

extension XCConfigDeployTargetType {
    public var configurationName: ConfigurationName {
        ConfigurationName(stringLiteral: rawValue)
    }
}
