// https://leetcode.com/problems/max-area-of-island/

class DFS_Solution695_MaxAreaOfIslanda_Recursive {
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
