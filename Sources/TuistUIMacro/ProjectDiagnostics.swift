import SwiftSyntax
import SwiftDiagnostics

struct ProjectDiagnostics: Diagnostics {
    static var domain: String { "project" }

    func structRequired(node: some SyntaxProtocol) -> Diagnostic {
        diagnostic(for: node, message: "Project required a struct", id: "projectStructRequired")
    }
}
