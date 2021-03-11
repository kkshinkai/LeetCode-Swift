// https://leetcode.com/problems/letter-combinations-of-a-phone-number/

class LeetCode17_LetterCombinationsOfAPhoneNumber_Backtracking {
    private static var keyboard =
        ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]

    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }
        
        return digits.reduce([""]) { result, digit in
            let digit = Int(String(digit))!
            return result.flatMap { currentResult in
                Self.keyboard[digit].map {
                    currentResult + String($0)
                }
            }
        }
    }
}
