import ProjectDescription

public protocol Configuration<ConfigurationTarget> {
    /// A type that holds the current target of the configuration info.
    associatedtype ConfigurationTarget: ConfigurationType
    /// A type representing the body of this configuration.
    associatedtype Body = Configuration

    /// - Parameters:
    ///   - configurationTarget: The current target of the configuration.
    /// - Returns: Returns the correct configurations
    func configure(into configurationTarget: ConfigurationTarget) -> [ProjectDescription.Configuration]
    
    /// A type representing the body of this configuration.
    @ConfigurationBuilder<ConfigurationTarget>
    var body: Self.Body { get }
}

extension Configuration where Body == Never {
    @_transparent
    public var body: Body {
        fatalError()
    }
}

extension Configuration where Body: Configuration, Body.ConfigurationTarget == ConfigurationTarget {
    @inlinable
    public func configure(into configurationTarget: ConfigurationTarget) -> [ProjectDescription.Configuration] {
        return self.body.configure(into: configurationTarget)
    }
}

public typealias ConfigurationOf<C: Configuration> = Configuration<C.ConfigurationTarget>
