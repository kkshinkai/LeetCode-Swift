// https://leetcode.com/problems/number-of-islands/

class Solution200_NumberOfIsland_DFS_Recursive {
    private var grid: [[Character]] = []
    
    private func surveyIsland(x: Int, y: Int) -> Int {
        let height = grid.count, width = grid.first!.count
        if !(0..<height).contains(x) || !(0..<width).contains(y) || grid[x][y] == "0" {
            return 0
        } else {
            grid[x][y] = "0"
            _ = surveyIsland(x: x + 1, y: y)
            _ = surveyIsland(x: x - 1, y: y)
            _ = surveyIsland(x: x, y: y + 1)
            _ = surveyIsland(x: x, y: y - 1)
            return 1
        }
    }
    
    func numIslands(_ grid: [[Character]]) -> Int {
        let height = grid.count, width = grid.first!.count
        self.grid = grid
        
        var number = 0
        for i in 0..<height {
            for j in 0..<width {
                number += surveyIsland(x: i, y: j)
            }
        }
        return number
    }
}

class Solution200_NumberOfIsland_DisjointSet {
    private class DisjointSet {
        var count = 0
        private var parent: [Int]
        private var rank: [Int]
        
        init(for grid: [[Character]]) {
            let height = grid.count, width = grid.first!.count
            parent = Array(repeating: 0, count: height * width)
            rank = Array(repeating: 0, count: height * width)
            for i in 0..<height {
                for j in 0..<width {
                    if (grid[i][j] == "1") {
                        parent[i * width + j] = i * width + j
                        count += 1
                    }
                    rank[i * width + j] = 0
                }
            }
        }
        
        func find(_ element: Int) -> Int {
            if parent[element] != element {
                parent[element] = find(parent[element])
            }
            return parent[element]
        }
        
        func union(_ element1: Int, _ element2: Int) {
            let root1 = find(element1), root2 = find(element2)
            if root1 != root2 {
                if rank[root1] > rank[root2] {
                    parent[root2] = root1
                } else if rank[root1] < rank[root2] {
                    parent[root1] = root2
                } else {
                    parent[root2] = root1
                    rank[root1] += 1
                }
                count -= 1
            }
        }
    }
    
    static let differential = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    
    func numIslands(_ grid: [[Character]]) -> Int {
        let height = grid.count, width = grid.first!.count
        var grid = grid
        
        let sets = DisjointSet(for: grid)
        for i in 0..<height {
            for j in 0..<width {
                if grid[i][j] == "1" {
                    grid[i][j] = "0"
                    for (dx, dy) in Self.differential {
                        let (x, y) = (i + dx, j + dy)
                        if (0..<height).contains(x) && (0..<width).contains(y) && grid[x][y] == "1" {
                            sets.union(i * width + j, x * width + y)
                        }
                    }
                }
            }
        }
        return sets.count
    }
}
