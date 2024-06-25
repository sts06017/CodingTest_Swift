import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var position = [0,0]
    
    let minX = (board[0] - 1) / (-2)
    let maxX = (board[0] - 1) / 2
    let minY = (board[1] - 1) / (-2)
    let maxY = (board[1] - 1) / 2
    
    for i in keyinput {
        switch i {
        case "up":
            if position[1] + 1 > maxY {
                continue
            } else {
                position[1] += 1
            }
        case "down":
            if position[1] - 1 < minY {
                continue
            } else {
                position[1] -= 1
            }
        case "left":
            if position[0] - 1 < minX {
                continue
            } else {
                position[0] -= 1
            }
        case "right":
            if position[0] + 1 > maxX {
                continue
            } else {
                position[0] += 1
            }
        default: continue
        }
    }
    return position
}