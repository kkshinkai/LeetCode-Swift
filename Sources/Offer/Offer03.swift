// https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof/

class Offer03_FindRepeatNumber_Dictionary {
    func findRepeatNumber(_ numbers: [Int]) -> Int {
        var seen: Set<Int> = []
        for number in numbers {
            if seen.contains(number) {
                return number
            } else {
                seen.insert(number)
            }
        }
        return -1
    }
}

class Offer03_FindRepeatNumber_InPlace {
    func findRepeatNumber(_ numbers: [Int]) -> Int {
        var numbers = numbers
        for (index, number) in numbers.enumerated() {
            while index != number {
                if number == numbers[number] {
                    return number
                } else {
                    numbers.swapAt(index, number)
                }
            }
        }
        return -1
    }
}
