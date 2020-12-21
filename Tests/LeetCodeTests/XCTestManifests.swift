import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DFS_Solution695_MaxAreaOfIslandTests.allTests),
    ]
}
#endif
