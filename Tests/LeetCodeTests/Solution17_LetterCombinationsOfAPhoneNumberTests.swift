import XCTest
@testable import LeetCode

final class Solution17_LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    func testBacktracking() {
        let solution1 = Solution17_LetterCombinationsOfAPhoneNumber_Backtracking()
        XCTAssertEqual(solution1.letterCombinations("23"),
                       ["ad","ae","af","bd","be","bf","cd","ce","cf"])
        
        let solution2 = Solution17_LetterCombinationsOfAPhoneNumber_Backtracking()
        XCTAssertEqual(solution2.letterCombinations(""), [])
    }
}
