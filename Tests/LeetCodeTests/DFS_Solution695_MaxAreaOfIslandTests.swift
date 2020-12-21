import XCTest
@testable import LeetCode

final class DFS_Solution695_MaxAreaOfIslandTests: XCTestCase {
    func testRecursiveExample() {
        let solution1 = DFS_Solution695_MaxAreaOfIslanda_Recursive()
        let island1 =
            [[0,0,1,0,0,0,0,1,0,0,0,0,0],
             [0,0,0,0,0,0,0,1,1,1,0,0,0],
             [0,1,1,0,1,0,0,0,0,0,0,0,0],
             [0,1,0,0,1,1,0,0,1,0,1,0,0],
             [0,1,0,0,1,1,0,0,1,1,1,0,0],
             [0,0,0,0,0,0,0,0,0,0,1,0,0],
             [0,0,0,0,0,0,0,1,1,1,0,0,0],
             [0,0,0,0,0,0,0,1,1,0,0,0,0]]
        XCTAssertEqual(solution1.maxAreaOfIsland(island1), 6)
        
        let solution2 = DFS_Solution695_MaxAreaOfIslanda_Recursive()
        let island2 = [[0,0,0,0,0,0,0,0]]
        XCTAssertEqual(solution2.maxAreaOfIsland(island2), 0)
    }

    static var allTests = [
        ("testRecursiveExample", testRecursiveExample),
    ]
}
