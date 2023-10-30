import ProjectDescription

@resultBuilder
public struct FileElementBuilder {
    @inlinable
    public static func buildBlock() -> [FileElement] {
        []
    }
    @inlinable
    public static func buildBlock(_ fileElements: FileElement...) -> [FileElement] {
        fileElements
    }
    @inlinable
    public static func buildBlock(_ fileElements: [FileElement]) -> [FileElement] {
        fileElements
    }
    @inlinable
    public static func buildOptional(_ wrapped: [FileElement]?) -> [FileElement]? {
        wrapped
    }
}
