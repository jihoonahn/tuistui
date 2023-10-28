import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct ProjectMacro: PeerMacro {
    static var diagnostics: ProjectDiagnostics { ProjectDiagnostics() }

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let projectName = getStructName(from: declaration, in: context) else {
            return []
        }
        let projectSyntax = try VariableDeclSyntax("let project = \(raw: projectName)().makeModule()")
        return [
            projectSyntax.as(DeclSyntax.self)
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
