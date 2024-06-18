import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var num = 0
    for i in s1 {
        num += s2.filter { $0 == i }.count
    }
    return num
}