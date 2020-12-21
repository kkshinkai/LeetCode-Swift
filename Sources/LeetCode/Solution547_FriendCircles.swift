// https://leetcode.com/problems/friend-circles/

class Solution547_FriendCircles_DFS_Recursive {
    private var relationship: [[Int]] = []
    private var visited: [Bool] = []
    
    private func findFriends(of people: Int) {
        visited[people] = true
        for (friend, relation) in relationship[people].enumerated() where relation == 1 {
            if !visited[friend] {
                visited[friend] = true
                findFriends(of: friend)
            }
        }
    }
    
    func findCircleNum(_ relationship: [[Int]]) -> Int {
        self.relationship = relationship
        visited = Array(repeating: false, count: relationship.count)
        var number = 0
        for people in visited.indices where !visited[people] {
            findFriends(of: people)
            number += 1
        }
        return number
    }
}
