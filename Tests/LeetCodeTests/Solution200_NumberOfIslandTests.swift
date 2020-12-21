import XCTest
@testable import LeetCode

final class Solution200_NumberOfIslandTests: XCTestCase {
    func testRecursiveDFS() {
        let solution1 = Solution200_NumberOfIsland_DFS_Recursive()
        let island1: [[Character]] =
            [["1","1","1","1","0"],
             ["1","1","0","1","0"],
             ["1","1","0","0","0"],
             ["0","0","0","0","0"]]
        XCTAssertEqual(solution1.numIslands(island1), 1)
        
        let solution2 = Solution200_NumberOfIsland_DFS_Recursive()
        let island2: [[Character]] =
            [["1","1","0","0","0"],
             ["1","1","0","0","0"],
             ["0","0","1","0","0"],
             ["0","0","0","1","1"]]
        XCTAssertEqual(solution2.numIslands(island2), 3)
    }
    
    func testDisjointSet() {
        let solution1 = Solution200_NumberOfIsland_DisjointSet()
        let island1: [[Character]] =
            [["1","1","1","1","0"],
             ["1","1","0","1","0"],
             ["1","1","0","0","0"],
             ["0","0","0","0","0"]]
        XCTAssertEqual(solution1.numIslands(island1), 1)
        
        let solution2 = Solution200_NumberOfIsland_DisjointSet()
        let island2: [[Character]] =
            [["1","1","0","0","0"],
             ["1","1","0","0","0"],
             ["0","0","1","0","0"],
             ["0","0","0","1","1"]]
        XCTAssertEqual(solution2.numIslands(island2), 3)
    }
}
