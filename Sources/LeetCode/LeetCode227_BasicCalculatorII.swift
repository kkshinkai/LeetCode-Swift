// https://leetcode.com/problems/basic-calculator-ii/

enum LeetCode227_BasicCalculatorII {
    class Solution {
        private var current: String.Index!
        private var source = ""
        private var sign = +1
        private var numberStack: [Int] = []
        
        func calculate(_ string: String) -> Int {
            self.source = string
            self.current = source.startIndex
        
            while current < source.endIndex {
                switch source[current] {
                case "+":
                    current = source.index(after: current)
                    sign = +1
                case "-":
                    current = source.index(after: current)
                    sign = -1
                default:
                    numberStack.append(sign * readFactor())
                }
            }
            return numberStack.reduce(0, +)
        }
        
        private func readInteger() -> Int {
            readTrivia()
            var number = 0
            while current < source.endIndex, source[current].isNumber {
                number = number * 10 + Int(String(source[current]))!
                current = source.index(after: current)
            }
            return number
        }
        
        // Read an integer or a multiplication or division sequence.
        private func readFactor() -> Int {
            var number = readInteger()
            readTrivia()
            while current < source.endIndex,
                  source[current] == "/" || source[current] == "*" {
                if source[current] == "*" {
                    current = source.index(after: current)
                    number *= readInteger()
                } else {
                    current = source.index(after: current)
                    number /= readInteger()
                }
            }
            return number
        }
        
        private func readTrivia() {
            while current < source.endIndex, source[current].isWhitespace {
                current = source.index(after: current)
            }
        }
    }
}
