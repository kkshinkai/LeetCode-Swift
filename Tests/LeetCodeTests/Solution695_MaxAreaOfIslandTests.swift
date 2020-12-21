import XCTest
@testable import LeetCode

final class Solution695_MaxAreaOfIslandTests: XCTestCase {
    func testRecursiveDFS() {
        let solution1 = Solution695_MaxAreaOfIslanda_DFS_Recursive()
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
        
        let solution2 = Solution695_MaxAreaOfIslanda_DFS_Recursive()
        let island2 = [[0,0,0,0,0,0,0,0]]
        XCTAssertEqual(solution2.maxAreaOfIsland(island2), 0)
    }
    
    func testIterativeDFS() {
        let solution1 = Solution695_MaxAreaOfIslanda_DFS_Iterative()
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
        
        let solution2 = Solution695_MaxAreaOfIslanda_DFS_Iterative()
        let island2 = [[0,0,0,0,0,0,0,0]]
        XCTAssertEqual(solution2.maxAreaOfIsland(island2), 0)
    }
}
