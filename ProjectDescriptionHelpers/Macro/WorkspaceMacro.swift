#if swift(>=5.9)
@attached(peer)
public macro Workspace() = #externalMacro(
    module: "TuistUIMacro",
    type: "WorkspaceMacro"
)
#endif
