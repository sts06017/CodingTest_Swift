import Foundation

func solution(_ sides:[Int]) -> Int {
    return ((abs(sides[0] - sides[1]) + 1)..<(sides[0] + sides[1])).count
}