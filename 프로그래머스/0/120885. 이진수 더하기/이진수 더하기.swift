import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
        var b1 = Array(bin1.reversed().map{ Int(String($0))! })
    var b2 = Array(bin2.reversed().map{ Int(String($0))! })
    
    let bigNum = max(b1.count, b2.count)
    
    var zero1 = Array(repeating: 0, count: bigNum)
    var zero2 = Array(repeating: 0, count: bigNum)
    
    for i in 0...b1.count-1 {
        zero1[i] = b1[i]
    }
    for i in 0...b2.count-1 {
        zero2[i] = b2[i]
    }
    
    var b3 = [Int]()
    
    var tmp = 0
    
    for i in 0...bigNum-1 {
        tmp = zero1[i] + zero2[i]
        b3.append(tmp)
    }
    
    for i in 0...bigNum {
        if i+1 != b3.count {
            b3[i+1] += (b3[i] / 2)
        } else {
            b3.append(b3[i] / 2)
        }
        b3[i] = b3[i] % 2
    }
    b3.reverse()
    return String(Int(b3.map{String($0)}.joined()) ?? 0)
}