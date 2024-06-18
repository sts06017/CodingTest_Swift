import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in 1...n {
        if n == Int(pow(Double(i), 2)) { 
            result = 1
            break
        }
        else {
            result = 2
        }
    }
    return result
}