import Foundation

func solution(_ n:Int) -> [[Int]] {
    var moves: [[Int]] = []
    moves = hanoi(n: n, from: 1, to: 3, sub: 2, moves: &moves)
    return moves
}

func hanoi(n: Int, from: Int, to: Int, sub: Int, moves: inout [[Int]]) -> [[Int]]{
    if n == 1 {
        moves.append([from, to])
        return moves
    }
    
    let _ = hanoi(n: n-1, from: from, to: sub, sub: to, moves: &moves)
    moves.append([from, to])
    let _ = hanoi(n: n-1, from: sub, to: to, sub: from, moves: &moves)
    
    return moves
}