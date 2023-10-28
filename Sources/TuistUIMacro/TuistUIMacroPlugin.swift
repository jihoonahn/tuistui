#if canImport(SwiftCompilerPlugin)
import SwiftSyntaxMacros
import SwiftCompilerPlugin

/// TuistUI Macro's Compiler plugin
@main
struct TuistUIMacroPlugin: CompilerPlugin {
    var providingMacros: [Macro.Type] = [
        ProjectMacro.self,
        WorkspaceMacro.self
    ]
}
#endif
