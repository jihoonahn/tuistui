import XCTest
import ProjectDescription
@testable import TuistUI

final class ModuleTests: XCTestCase {
    func testProjectGenerate() {
        struct TestProject: Module {
            var body: some Module {
                Project {}
            }
        }
        let testProject = TestProject()
        let projectType = type(of: testProject.makeModule())
        
        XCTAssertTrue(projectType == ProjectDescription.Project.self, "The return type is not ProjectDescription.Project")
    }
    func testWorkspaceGenerate() {
        struct TestWorkspace: Module {
            var body: some Module {
                Workspace {}
            }
        }
        let testWorkspace = TestWorkspace()
        let workspaceType = type(of: testWorkspace.makeModule())
        
        XCTAssertTrue(workspaceType == ProjectDescription.Workspace.self, "The return type is not ProjectDescription.Workspace")
    }
}
