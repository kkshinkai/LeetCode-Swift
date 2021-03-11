import XCTest
@testable import LeetCode
import Support

final class LeetCode2_AddTwoNumbersTests: XCTestCase {
    func test() {
        let solution = LeetCode2_AddTwoNumbers.Solution()
        let l1 = ListNode(2, 4, 3)
        let l2 = ListNode(5, 6, 4)
        XCTAssertEqual(solution.addTwoNumbers(l1, l2), ListNode(7, 0, 8))
    }
}
