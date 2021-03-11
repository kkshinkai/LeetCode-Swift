public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
    public init?(_ values: Int...) {
        guard !values.isEmpty else {
            return nil
        }
        
        var dummyHead = ListNode(), current = dummyHead
        for value in values {
            current.next = ListNode(value)
            current = current.next!
        }
        
        if let result = dummyHead.next {
            self.val = result.val
            self.next = result.next
        } else {
            return nil
        }
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        if lhs.val == rhs.val {
            return lhs.next == rhs.next
        } else {
            return false
        }
    }
}

extension ListNode: CustomDebugStringConvertible {
    public var debugDescription: String {
        var result = "["
        var iterator: ListNode? = self, atStart = true
        while iterator != nil {
            if !atStart {
                result += ", "
            }
            result += "\(iterator!.val)"
            iterator = iterator!.next
            atStart = false
        }
        result += "]"
        return result
    }
}
