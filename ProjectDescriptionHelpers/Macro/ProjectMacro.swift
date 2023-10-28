#if swift(>=5.9)
@attached(peer, names: arbitrary)
public macro Project() = #externalMacro(
    module: "TuistUIMacro",
    type: "ProjectMacro"
)
#endif
