import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var n = -1
    for i in 1...k {
        n += 2
    }
    
    return n % numbers.count == 0 ? numbers.count : n % numbers.count
}