import ProjectDescription

/// Environment value Property wrapper
///
/// Used for Environment Management.
/// ```swift
///  @Environment var env = AppEnvironment()
/// ```
@propertyWrapper public struct Environment<ObjectType> where ObjectType: EnvironmentObject {
    private var env: ObjectType

    public init(wrappedValue: ObjectType) {
        self.env = wrappedValue
    }

    public var wrappedValue: ObjectType { env }

    public var projectedValue: Environment<ObjectType> {
        get { return self }
    }
}
