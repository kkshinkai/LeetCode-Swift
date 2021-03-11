// https://leetcode.com/problems/max-area-of-island/

class LeetCode695_MaxAreaOfIslanda_DFS_Recursive {
    private var grid: [[Int]] = []
    
    private func calculateArea(x: Int, y: Int) -> Int {
        let height = grid.count, width = grid.first!.count
        if !(0..<height).contains(x) || !(0..<width).contains(y) || grid[x][y] == 0 {
            return 0
        } else {
            grid[x][y] = 0
            return 1 + calculateArea(x: x + 1, y: y)
                     + calculateArea(x: x - 1, y: y)
                     + calculateArea(x: x, y: y + 1)
                     + calculateArea(x: x, y: y - 1)
        }
    }
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let height = grid.count, width = grid.first!.count
        self.grid = grid
        var maximumArea = 0
        for i in 0..<height {
            for j in 0..<width {
                maximumArea = max(maximumArea, calculateArea(x: i, y: j))
            }
        }
        return maximumArea
    }
}

class LeetCode695_MaxAreaOfIslanda_DFS_Iterative {
    static let differential = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    
    private var grid: [[Int]] = []
    
    private func calculateArea(x: Int, y: Int) -> Int {
        guard grid[x][y] == 1 else {
            return 0
        }
        
        let height = grid.count, width = grid.first!.count
        var area = 0
        var stack = [(x, y)]
        grid[x][y] = 0
        
        while let (x, y) = stack.popLast() {
            area += 1
            for (dx, dy) in Self.differential {
                let (x, y) = (x + dx, y + dy)
                if (0..<height).contains(x) && (0..<width).contains(y) && grid[x][y] == 1 {
                    stack.append((x, y))
                    grid[x][y] = 0
                }
            }
        }
        
        return area
    }
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let height = grid.count, width = grid.first!.count
        self.grid = grid
        var maximumArea = 0
        for i in 0..<height {
            for j in 0..<width {
                maximumArea = max(maximumArea, calculateArea(x: i, y: j))
            }
        }
        return maximumArea
    }
}
