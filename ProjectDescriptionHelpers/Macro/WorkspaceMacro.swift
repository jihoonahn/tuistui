#if swift(>=5.9)
@attached(peer, names: suffixed(Value))
public macro Workspace() = #externalMacro(
    module: "TuistUIMacro",
    type: "WorkspaceMacro"
)
#endif
