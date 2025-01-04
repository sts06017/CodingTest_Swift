import Foundation

func solution(_ s:String) -> [Int] {
    var zero = 0
    var count = 0
    var s = s
    
    while s != "1" {
        var nonZero = s.filter{ $0 != "0" }
        zero += s.count - nonZero.count
        
        var strCount = nonZero.count
        s = String(strCount, radix: 2)
        count += 1
    }
    
    return [count, zero]
}