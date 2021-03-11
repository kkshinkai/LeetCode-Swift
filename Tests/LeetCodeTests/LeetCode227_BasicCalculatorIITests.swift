import XCTest
@testable import LeetCode

final class LeetCode227_BasicCalculatorIITests: XCTestCase {
    func test() {
        let solution1 = LeetCode227_BasicCalculatorII.Solution()
        XCTAssertEqual(solution1.calculate("3+2*2"), 7)
    }
}
