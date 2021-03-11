import XCTest
@testable import Offer

final class Offfer03_FindRepeatNumberTests: XCTestCase {
    func testDictionary() {
        let solution = Offer03_FindRepeatNumber_Dictionary()
        let result = solution.findRepeatNumber([2, 3, 1, 0, 2, 5, 3])
        XCTAssert(result == 2 || result == 3)
    }
    
    func testInPlace() {
        let solution = Offer03_FindRepeatNumber_InPlace()
        let result = solution.findRepeatNumber([2, 3, 1, 0, 2, 5, 3])
        XCTAssert(result == 2 || result == 3)
    }
}
