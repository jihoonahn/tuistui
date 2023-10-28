#if swift(>=5.9)

@attached(extension)
public macro Project() = #externalMacro(
    module: "ProjectMacro",
    type: "ProjectMacro"
)
#endif
