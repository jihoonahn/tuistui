import ProjectDescription

@resultBuilder
public struct ModuleBuilder {
    @inlinable
    public static func buildBlock<Content: Module>(_ content: Content) -> Content {
        content
    }
}
