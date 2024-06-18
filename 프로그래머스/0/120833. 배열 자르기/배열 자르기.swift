import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var num: [Int] = [ ]
    for i in num1...num2 {
        num.append(numbers[i])
    }
    return num
}