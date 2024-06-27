import Foundation

func solution(_ board:[[Int]]) -> Int {
    var result:[Int] = []
    var arr = board
        for y in 0..<arr.count {
        for x in 0..<arr.count {
            if board[y][x] == 1 {
                if y-1 >= 0 {
                    if x-1 >= 0 {
                        arr[y-1][x-1] = 2
                    }
                    
                    arr[y-1][x] = 2
                    
                    if (x+1) < board.count {
                        arr[y-1][x+1] = 2
                    }
                }
                
                if x-1 >= 0 {
                    arr[y][x-1] = 2
                }
                if x+1 < board.count {
                    arr[y][x+1] = 2
                }
                
                if y+1 < board.count {
                    if x-1 >= 0 {
                        arr[y+1][x-1] = 2
                    }
                    
                    arr[y+1][x] = 2

                    if x+1 < board.count {
                        arr[y+1][x+1] = 2
                    }
                }
            }
        }
    }
    for i in arr {
        result += i.filter{$0 == 2 || $0 == 1}
    }
    return arr.count * arr.count - result.count
}