import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    var ans = 0
    
    var sortedA = A.sorted(by: <)
    var sortedB = B.sorted(by: >)
    
    while !sortedA.isEmpty && !sortedB.isEmpty{
        ans += sortedA.removeFirst() * sortedB.removeFirst()
    }
    
    return ans
}
