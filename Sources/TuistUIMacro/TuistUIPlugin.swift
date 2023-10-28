#if canImport(SwiftCompilerPlugin)
import SwiftSyntaxMacros
import SwiftCompilerPlugin

/// TuistUI Macro's Compiler plugin
@main
struct TuistUIPlugin: CompilerPlugin {
    var providingMacros: [Macro.Type] = [
        ProjectMacro.self,
        WorkspaceMacro.self
    ]
}
#endif
