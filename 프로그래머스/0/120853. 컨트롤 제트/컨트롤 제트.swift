import Foundation

func solution(_ s:String) -> Int {
    let str = s.split(separator: " ")
    var sum = 0
    var tmp = 0
    
    for i in str {
        if i == "Z" {
            tmp = 0
        } else {
            sum += tmp
            tmp = Int(i)!
        }
    }
    sum += tmp
    return sum
}