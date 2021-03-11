// https://leetcode.com/problems/add-two-numbers/solution/

import Support

enum LeetCode2_AddTwoNumbers {
    class Solution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var l1 = l1, l2 = l2

            var dummyHead = ListNode(), current = dummyHead
            var carry = 0
            while l1 != nil || l2 != nil || carry != 0 {
                let (quotient, remainder) = ((l1?.val ?? 0) + (l2?.val ?? 0) + carry)
                    .quotientAndRemainder(dividingBy: 10)
                carry = quotient
                current.next = ListNode(remainder)
                current = current.next!
                l1 = l1?.next
                l2 = l2?.next
            }
            return dummyHead.next
        }
    }
}
