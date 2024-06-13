import ProjectDescription

/// A Protocol for management configurations in one place
public protocol XCConfigTargetType: Hashable, CaseIterable, RawRepresentable where RawValue == String {
    /// Specify the configuration path.
    var path: ProjectDescription.Path { get }
}
