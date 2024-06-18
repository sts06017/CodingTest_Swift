import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var num = n
    for i in 1...t {
        num *= 2
    }
    return num
}