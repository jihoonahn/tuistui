import ProjectDescription

public protocol Module {
    associatedtype Body: Module
    @MainActor var body: Self.Body { get }
}

//struct BaseFeature: Module {
//
//    var body: some Module {
//        Project(name: "") {
//            Target {
//                
//            }
//            TargetDependency {
//                
//            }
//        }
//    }
//}
