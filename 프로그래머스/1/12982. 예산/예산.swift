import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var d = d.sorted(by: <)
    var answer = 0
    var budget = budget
    
    for i in d {
        budget -= i
        if budget < 0 {
            break
        }
        answer += 1
    }
    
    
    return answer
}