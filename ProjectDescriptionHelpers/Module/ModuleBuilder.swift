import ProjectDescription

@resultBuilder
public struct ModuleBuilder {
    @inlinable
    public static func buildBlock() -> EmptyModule {
        EmptyModule()
    }
    @inlinable
    public static func buildBlock<Content: Module>(_ content: Content) -> Content {
        content
    }
    @inlinable
    public static func buildOptional<M: Module>(_ wrapped: M?) -> M? {
        wrapped
    }
}
