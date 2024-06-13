import ProjectDescription

/// A type-erased configuration that invokes the given configure function.
public struct Configure<XCConfigTarget: XCConfigType>: XCConfig {

    @usableFromInline
    let configure: (XCConfigTarget) -> [ProjectDescription.Configuration]

    @usableFromInline
    init(
        internal configure: @escaping (XCConfigTarget) -> [ProjectDescription.Configuration]
    ) {
        self.configure = configure
    }

    /// Initializes a reducer with a `configure` function.
    @inlinable
    public init(_ configure: @escaping (XCConfigTarget) -> [ProjectDescription.Configuration]) {
        self.init(internal: configure)
    }

    /// Type-erases a configuration.
    ///
    /// - Parameter configuration: A configuration that is called when ``configuration(into:)`` is invoked.
    @inlinable
    public init<C: XCConfig>(_ configuration: C)
    where C.XCConfigTarget == XCConfigTarget {
        self.init(internal: configuration.configure)
    }

    @inlinable
    public func configure(into target: XCConfigTarget) -> [ProjectDescription.Configuration] {
        self.configure(into: target)
    }
}
