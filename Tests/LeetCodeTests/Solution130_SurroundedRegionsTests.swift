import XCTest
@testable import LeetCode

final class Solution130_SurroundedRegionsTests: XCTestCase {
    func testRecursiveDFS() {
        let solution = Solution130_SurroundedRegions_DFS_Recursive()
        var board: [[Character]] =
            [["X","X","X","X"],
             ["X","O","O","X"],
             ["X","X","O","X"],
             ["X","O","X","X"]]
        let result: [[Character]] =
            [["X","X","X","X"],
             ["X","X","X","X"],
             ["X","X","X","X"],
             ["X","O","X","X"]]
        solution.solve(&board)
        XCTAssertEqual(board, result)
    }
}
