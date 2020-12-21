import XCTest
@testable import LeetCode

final class DFS_Solution200_NumberOfIslandTests: XCTestCase {
    func testRecursiveExample() {
        let solution1 = DFS_Solution200_NumberOfIsland_Recursive()
        let island1: [[Character]] =
            [["1","1","1","1","0"],
             ["1","1","0","1","0"],
             ["1","1","0","0","0"],
             ["0","0","0","0","0"]]
        XCTAssertEqual(solution1.numIslands(island1), 1)
        
        let solution2 = DFS_Solution200_NumberOfIsland_Recursive()
        let island2: [[Character]] =
            [["1","1","0","0","0"],
             ["1","1","0","0","0"],
             ["0","0","1","0","0"],
             ["0","0","0","1","1"]]
        XCTAssertEqual(solution2.numIslands(island2), 3)
    }
    
    static var allTests = [
        ("testRecursiveExample", testRecursiveExample),
    ]
}
