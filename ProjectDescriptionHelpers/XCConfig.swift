import ProjectDescription

/// A protocol that serves to manage the configuration used in the project at once.
public protocol XCConfig<XCConfigTarget> {
    /// A type that holds the current target of the configuration info.
    associatedtype XCConfigTarget: XCConfigTargetType
    /// A type representing the body of this configuration.
    associatedtype Body = XCConfig

    /// - Parameters:
    ///   - configurationTarget: The current target of the configuration.
    /// - Returns: Returns the correct configurations
    func configure(
        into target: XCConfigTarget
    ) -> [ProjectDescription.Configuration]
    
    /// A type representing the body of this configuration.
    @XCConfigBuilder<XCConfigTarget>
    var body: Self.Body { get }
}

extension XCConfig where Body == Never {
    @_transparent
    public var body: Body {
        fatalError()
    }
}

extension XCConfig where Body: XCConfig, Body.XCConfigTarget == XCConfigTarget {
    @inlinable
    public func configure(
        into target: Body.XCConfigTarget
    ) -> [ProjectDescription.Configuration] {
        return self.body.configure(into: target)
    }
}

/// A convenience for constraining a Configuration conformance.
public typealias XCConfigOf<C: XCConfig> = XCConfig<C.XCConfigTarget>
