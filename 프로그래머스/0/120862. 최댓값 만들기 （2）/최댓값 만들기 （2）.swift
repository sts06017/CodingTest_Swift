import Foundation

func solution(_ numbers:[Int]) -> Int {
    let low = numbers.sorted(by: <)
    let num1 = low[0] * low[1]
    let num2 = low[low.count - 1] * low[low.count - 2]
    return num1 > num2 ? num1 : num2
}