import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let maxX = dots.max(by: {$0[0] < $1[0]})!
    let minX = dots.min(by: {$0[0] < $1[0]})!
    let maxY = dots.max(by: {$0[1] < $1[1]})!
    let minY = dots.min(by: {$0[1] < $1[1]})!
    let x = maxX[0] - minX[0]
    let y = maxY[1] - minY[1]
    
    return x * y
}