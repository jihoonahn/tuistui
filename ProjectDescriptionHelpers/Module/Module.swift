import ProjectDescription

public protocol Module {
    #if DEBUG
    associatedtype _Body
    typealias Body = _Body
    #else
    associatedtype Body
    #endif

    var typeName: String { get }
    func makeModule(_ name: String) -> Any

    @ModuleBuilder
    var body: Self.Body { get }
}

extension Module where Body == Never {
    public var body: Body {
        fatalError("`\(Self.self)` Module has no body.")
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
