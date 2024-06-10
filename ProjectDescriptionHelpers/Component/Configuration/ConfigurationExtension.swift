import ProjectDescription

extension ProjectDescription.Configuration {

    /// Returns a debug configuration.
    ///
    /// - Parameters:
    ///   - type: The type of the configuration to use
    ///   - settings: The base build settings to apply
    /// - Returns: A debug `CustomConfiguration`
    public static func debug(
        _ type: some ConfigurationType,
        settings: SettingsDictionary = [:]
    ) -> ProjectDescription.Configuration {
        return .debug(name: type.configurationName, settings: settings, xcconfig: type.path)
    }

    /// Returns a release configuration.
    ///
    /// - Parameters:
    ///   - type: The type of the configuration to use
    ///   - settings: The base build settings to apply
    /// - Returns: A relase `CustomConfiguration`
    public static func release(
        _ type: some ConfigurationType,
        settings: SettingsDictionary = [:]
    ) -> ProjectDescription.Configuration {
        return .release(name: type.configurationName, settings: settings, xcconfig: type.path)
    }
}
