import XCTest
@testable import LeetCode

final class Solution547_FriendCirclesTests: XCTestCase {
    func testRecursiveDFS() {
        let solution1 = Solution547_FriendCircles_DFS_Recursive()
        let relationship1 =
            [[1,1,0],
             [1,1,0],
             [0,0,1]]
        XCTAssertEqual(solution1.findCircleNum(relationship1), 2)
        
        let solution2 = Solution547_FriendCircles_DFS_Recursive()
        let relationship2 =
            [[1,1,0],
             [1,1,1],
             [0,1,1]]
        XCTAssertEqual(solution2.findCircleNum(relationship2), 1)
    }
}
