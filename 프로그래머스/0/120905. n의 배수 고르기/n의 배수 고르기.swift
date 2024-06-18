import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var arr = numlist
    arr.removeAll(where: {$0 % n != 0})
    return arr
}