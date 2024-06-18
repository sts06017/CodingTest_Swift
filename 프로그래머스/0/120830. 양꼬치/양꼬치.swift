import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var result = 0
    result += 12000 * n
    result += 2000 * (k - n/10)
    return result
}