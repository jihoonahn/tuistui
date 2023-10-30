import ProjectDescription
/// A Protocol that describes how to evolve the current Module
public protocol Module {
    associatedtype Body: Module

    var typeName: String { get }
    /// Create `Project` or `Workspace`, including struct name
    func makeModule(_ name: String) -> Any

    @ModuleBuilder
    var body: Self.Body { get }
}

extension Never: Module {
    public var body: Never {
        fatalError()
    }
}

extension Module where Body: Module {
    @inlinable
    public func makeModule(_ name: String = "") -> Any {
        return self.body.makeModule(typeName)
    }
}

extension Module {
    public var typeName: String {
        return String(describing: type(of: self))
    }
}

/// Calls `fatalError` with an explanation that a given `type` is a primitive `Module`
public func neverModule(_ type: String) -> Never {
  fatalError("\(type) is a primitive `Module`, you're not supposed to access its `body`.")
}
