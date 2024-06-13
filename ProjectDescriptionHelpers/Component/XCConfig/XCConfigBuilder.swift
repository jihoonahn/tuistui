import ProjectDescription

@resultBuilder 
public enum XCConfigBuilder<XCConfigTarget: XCConfigTargetType> {
    @inlinable
    public static func buildBlock() -> EmptyConfigure<XCConfigTarget> {
        EmptyConfigure()
    }

    @inlinable
    public static func buildBlock<C: XCConfig>(_ configure: C) -> C
    where C.XCConfigTarget == XCConfigTarget
    {
        configure
    }

    @inlinable
    public static func buildExpression<C: XCConfig>(_ expression: C) -> C
    where C.XCConfigTarget == XCConfigTarget
    {
        expression
    }

    @inlinable
    @_disfavoredOverload
    public static func buildExpression(
      _ expression: any XCConfig<XCConfigTarget>
    ) -> Configure<XCConfigTarget> {
        Configure(expression)
    }

    @inlinable
    public static func buildFinalResult<C: XCConfig>(_ configure: C) -> C
    where C.XCConfigTarget == XCConfigTarget
    {
        configure
    }

    @inlinable
    public static func buildLimitedAvailability<C: XCConfig>(
      _ wrapped: C
    ) -> Configure<XCConfigTarget>
    where C.XCConfigTarget == XCConfigTarget
    {
        Configure(wrapped)
    }

    @inlinable
    public static func buildOptional<C: XCConfig>(_ wrapped: C?) -> C?
    where C.XCConfigTarget == XCConfigTarget
    {
        wrapped
    }

    @inlinable
    public static func buildPartialBlock<C: XCConfig>(
      first: C
    ) -> C
    where C.XCConfigTarget == XCConfigTarget
    {
      first
    }
}
