import ProjectDescription

/// A target representation.
///
/// The snippet below shows an example target:
///
/// ```swift
/// struct ExameplProject: Module {
///    var body: some Module {
///        Project {
///            Target(
///               name: "TargetName"
///               destinations: .iOS
///               product: .app
///               bundleId: "io.tuist.TargetName"
///            )
///        }
///    }
/// }
/// ```
public struct Target: TargetConvertable {

    /// Allows target modifier to be made to a given Target Type.
    public let targetModifier: TargetModifier

    public init(
        name: String, 
        destinations: Destinations,
        product: Product,
        productName: String? = nil,
        bundleId: String,
        deploymentTargets: DeploymentTargets? = nil,
        infoPlist: InfoPlist? = nil,
        sources: SourceFilesList? = nil,
        resources: ResourceFileElements? = nil,
        copyFiles: [CopyFilesAction]? = nil,
        headers: Headers? = nil,
        entitlements: Entitlements? = nil,
        scripts: [TargetScript] = [],
        dependencies: [TargetDependency] = [],
        settings: Settings? = nil,
        coreDataModels: [CoreDataModel] = [],
        environmentVariables: [String : EnvironmentVariable] = [:],
        launchArguments: [LaunchArgument] = [],
        additionalFiles: [FileElement] = [],
        buildRules: [BuildRule] = [],
        mergedBinaryType: MergedBinaryType = .disabled,
        mergeable: Bool = false,
        onDemandResourcesTags: OnDemandResourcesTags? = nil
    ) {
        self.targetModifier = TargetModifier(
            name: name,
            destinations: destinations,
            product: product,
            productName: productName,
            bundleId: bundleId,
            deploymentTargets: deploymentTargets,
            infoPlist: infoPlist,
            sources: sources,
            resources: resources,
            copyFiles: copyFiles,
            headers: headers,
            entitlements: entitlements,
            scripts: scripts,
            dependencies: dependencies,
            settings: settings,
            coreDataModels: coreDataModels,
            environmentVariables: environmentVariables,
            launchArguments: launchArguments,
            additionalFiles: additionalFiles,
            buildRules: buildRules,
            mergedBinaryType: mergedBinaryType,
            mergeable: mergeable,
            onDemandResourcesTags: onDemandResourcesTags
        )
    }

    public func build() -> ProjectDescription.Target {
        targetModifier.build()
    }
}
