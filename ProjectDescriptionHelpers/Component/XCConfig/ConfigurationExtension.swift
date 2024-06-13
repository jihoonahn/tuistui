import ProjectDescription

extension ProjectDescription.Configuration {

    /// Returns a debug configuration.
    ///
    /// - Parameters:
    ///   - type: The type of the configuration to use
    ///   - settings: The base build settings to apply
    /// - Returns: A debug `CustomConfiguration`
    public static func debug(
        into target: some XCConfigTargetType,
        deploy deployTarget: some XCConfigDeployTargetType,
        settings: SettingsDictionary = [:]
    ) -> ProjectDescription.Configuration {
        let xcconfigPath = Path.path("\(target.path.pathString)/\(deployTarget.rawValue).xcconfig")
        return .debug(
            name: deployTarget.configurationName,
            settings: settings,
            xcconfig: xcconfigPath
        )
    }

    /// Returns a release configuration.
    ///
    /// - Parameters:
    ///   - type: The type of the configuration to use
    ///   - settings: The base build settings to apply
    /// - Returns: A relase `CustomConfiguration`
    public static func release(
        into target: some XCConfigTargetType,
        deploy deployTarget: some XCConfigDeployTargetType,
        settings: SettingsDictionary = [:]
    ) -> ProjectDescription.Configuration {
        let xcconfigPath = Path.path("\(target.path.pathString)/\(deployTarget.rawValue).xcconfig")
        return .release(
            name: .configuration(""),
            settings: settings,
            xcconfig: xcconfigPath
        )
    }
}
