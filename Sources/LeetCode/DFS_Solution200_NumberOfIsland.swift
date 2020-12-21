// https://leetcode.com/problems/number-of-islands/

class DFS_Solution200_NumberOfIsland_Recursive {
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
