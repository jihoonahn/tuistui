import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct WorkspaceMacro: PeerMacro {
    static var diagnostics: WorkspaceDiagnostics { WorkspaceDiagnostics() }

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let workspaceName = getStructName(from: declaration, in: context) else {
            return []
        }
        let workspaceSyntax = try VariableDeclSyntax("let workspace = \(raw: workspaceName)().makeModule()")
        return [
            workspaceSyntax.as(DeclSyntax.self)
        ].compactMap { $0 }
    }

    private static func getStructName(
        from declaration: some SyntaxProtocol,
        in context: some MacroExpansionContext
    ) -> String? {
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            context.diagnose(diagnostics.structRequired(node: declaration))
            return nil
        }
        return structDecl.name.text
    }
}
