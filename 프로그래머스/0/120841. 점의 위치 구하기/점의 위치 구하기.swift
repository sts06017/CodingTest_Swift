import Foundation

func solution(_ sides:[Int]) -> Int {
    var result = 0
    if sides[0] > 0, sides[1] > 0 {
        result = 1
    }
    if sides[0] < 0, sides[1] > 0 {
        result = 2
    }
    if sides[0] < 0, sides[1] < 0 {
        result = 3
    }
    if sides[0] > 0, sides[1] < 0 {
        result = 4
    }
    return result
}