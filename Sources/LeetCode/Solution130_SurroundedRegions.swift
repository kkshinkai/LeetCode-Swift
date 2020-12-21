// https://leetcode.com/problems/surrounded-regions/

class Solution130_SurroundedRegions_DFS_Recursive {
    private func markOpenArea(x: Int, y: Int, in board: inout [[Character]]) {
        let height = board.count, width = board.first!.count
        guard (0..<height).contains(x), (0..<width).contains(y), board[x][y] == "O" else {
            return
        }
        board[x][y] = "*"
        markOpenArea(x: x - 1, y: y, in: &board)
        markOpenArea(x: x + 1, y: y, in: &board)
        markOpenArea(x: x, y: y - 1, in: &board)
        markOpenArea(x: x, y: y + 1, in: &board)
    }
    
    func solve(_ board: inout [[Character]]) {
        guard board != [] else {
            return
        }

        let height = board.count, width = board.first!.count
        for i in 0..<height {
            markOpenArea(x: i, y: 0, in: &board)
            markOpenArea(x: i, y: width - 1, in: &board)
        }
        for j in 0..<width {
            markOpenArea(x: 0, y: j, in: &board)
            markOpenArea(x: height - 1, y: j, in: &board)
        }
        
        for i in 0..<height {
            for j in 0..<width {
                board[i][j] = board[i][j] == "*" ? "O" : "X"
            }
        }
    }
}
