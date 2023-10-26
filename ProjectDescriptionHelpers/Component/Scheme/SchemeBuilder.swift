import ProjectDescription

@resultBuilder
public struct SchemeBuilder {
    public static func buildBlock(_ schemes: Scheme...) -> [Scheme] {
        schemes
    }
    public static func buildBlock(_ schemes: [Scheme]) -> [Scheme] {
        schemes
    }
}
