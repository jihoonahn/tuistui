import ProjectDescription

@resultBuilder
public struct FileElementBuilder {
    public static func buildBlock(_ fileElements: FileElement...) -> [FileElement] {
        fileElements
    }
    public static func buildBlock(_ fileElements: [FileElement]) -> [FileElement] {
        fileElements
    }
}
