/// A module that does nothing.
public struct EmptyModule: Module {
    /// Initializes a module that does nothing.
    @inlinable
    public init() {
        self.init(internal: ())
    }

    @usableFromInline
    init(internal: Void) {}

    public var body: Never {
        neverModule("EmptyModule")
    }
}
