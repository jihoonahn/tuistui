import SwiftSyntax
import SwiftDiagnostics

struct WorkspaceDiagnostics: Diagnostics {
    static var domain: String { "workspace" }

    func structRequired(node: some SyntaxProtocol) -> Diagnostic {
        diagnostic(for: node, message: "Workspace required a struct", id: "workspaceStructRequired")
    }
}
