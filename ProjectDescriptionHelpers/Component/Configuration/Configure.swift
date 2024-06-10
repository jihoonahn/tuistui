import ProjectDescription

/// A type-erased configuration that invokes the given configure function.
public struct Configure<ConfigurationTarget: ConfigurationType>: Configuration {

    @usableFromInline
    let configure: (ConfigurationTarget) -> [ProjectDescription.Configuration]

    @usableFromInline
    init(
        internal configure: @escaping (ConfigurationTarget) -> [ProjectDescription.Configuration]
    ) {
        self.configure = configure
    }

    /// Initializes a reducer with a `configure` function.
    @inlinable
    public init(_ configure: @escaping (ConfigurationTarget) -> [ProjectDescription.Configuration]) {
        self.init(internal: configure)
    }

    /// Type-erases a configuration.
    ///
    /// - Parameter configuration: A configuration that is called when ``configuration(into:)`` is invoked.
    @inlinable
    public init<C: Configuration>(_ configuration: C)
    where C.ConfigurationTarget == ConfigurationTarget {
        self.init(internal: configuration.configure)
    }

    @inlinable
    public func configure(into configurationTarget: ConfigurationTarget) -> [ProjectDescription.Configuration] {
        self.configure(into: configurationTarget)
    }
}
