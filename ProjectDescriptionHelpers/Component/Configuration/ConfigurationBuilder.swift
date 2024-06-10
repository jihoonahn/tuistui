import ProjectDescription

@resultBuilder 
public enum ConfigurationBuilder<ConfigurationTarget: ConfigurationType> {
    @inlinable
    public static func buildBlock() -> EmptyConfigure<ConfigurationTarget> {
        EmptyConfigure()
    }

    @inlinable
    public static func buildBlock<C: Configuration>(_ configure: C) -> C
    where C.ConfigurationTarget == ConfigurationTarget {
        configure
    }

    @inlinable
    public static func buildExpression<C: Configuration>(_ expression: C) -> C
    where C.ConfigurationTarget == ConfigurationTarget {
        expression
    }

    @inlinable
    @_disfavoredOverload
    public static func buildExpression(
      _ expression: any Configuration<ConfigurationTarget>
    ) -> Configure<ConfigurationTarget> {
        Configure(expression)
    }

    @inlinable
    public static func buildFinalResult<C: Configuration>(_ configure: C) -> C
    where C.ConfigurationTarget == ConfigurationTarget {
        configure
    }

    @inlinable
    public static func buildLimitedAvailability<C: Configuration>(
      _ wrapped: C
    ) -> Configure<ConfigurationTarget>
    where C.ConfigurationTarget == ConfigurationTarget {
        Configure(wrapped)
    }

    @inlinable
    public static func buildOptional<C: Configuration>(_ wrapped: C?) -> C?
    where C.ConfigurationTarget == ConfigurationTarget {
        wrapped
    }

    @inlinable
    public static func buildPartialBlock<C: Configuration>(
      first: C
    ) -> C
    where C.ConfigurationTarget == ConfigurationTarget {
      first
    }
}
