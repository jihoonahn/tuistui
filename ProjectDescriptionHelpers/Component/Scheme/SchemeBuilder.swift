import ProjectDescription

@resultBuilder
public struct SchemeBuilder {
    @inlinable
    public static func buildBlock(_ schemes: Scheme...) -> [Scheme] {
        schemes
    }
    @inlinable
    public static func buildBlock(_ schemes: [Scheme]) -> [Scheme] {
        schemes
    }
}
