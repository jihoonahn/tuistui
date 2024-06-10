import ProjectDescription

public struct EmptyConfigure<ConfigurationTarget: ConfigurationType>: Configuration {

    public init() {
        self.init(internal: ())
    }
    @usableFromInline
    init(internal: Void) {}

    public func configure(into configurationTarget: ConfigurationTarget) -> [ProjectDescription.Configuration] {
        []
    }
}
