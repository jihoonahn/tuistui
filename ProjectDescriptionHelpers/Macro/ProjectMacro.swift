#if swift(>=5.9)
@attached(peer, names: suffixed(Value))
public macro Project() = #externalMacro(
    module: "TuistUIMacro",
    type: "ProjectMacro"
)
#endif
