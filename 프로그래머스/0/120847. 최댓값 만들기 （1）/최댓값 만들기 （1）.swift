import Foundation

func solution(_ numbers:[Int]) -> Int {
    let num: [Int] = numbers.sorted().reversed()
    return num[0] * num[1]
}