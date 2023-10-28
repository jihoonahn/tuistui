import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct ProjectMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        return [
            "let project = BaseFeature().makeModule()"
        ]
    }
}
