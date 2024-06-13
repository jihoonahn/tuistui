import ProjectDescription

public struct EmptyConfigure<XCConfigTarget: XCConfigTargetType>: XCConfig {

    public init() {
        self.init(internal: ())
    }
    @usableFromInline
    init(internal: Void) {}

    public func configure(into target: XCConfigTarget) -> [ProjectDescription.Configuration] {
        []
    }
}
