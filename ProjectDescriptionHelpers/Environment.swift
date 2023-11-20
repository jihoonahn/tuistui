import ProjectDescription

/// Environment value Property wrapper
///
/// Used for Environment Management.
/// ```swift
///  @ModuleEnvironment var env = AppEnvironment()
/// ```
@propertyWrapper public struct ModuleEnvironment<ObjectType> where ObjectType: EnvironmentObject {
    private var env: ObjectType

    public init(wrappedValue: ObjectType) {
        self.env = wrappedValue
    }

    public var wrappedValue: ObjectType { env }

    public var projectedValue: ModuleEnvironment<ObjectType> {
        get { return self }
    }
}
