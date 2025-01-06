import Foundation

func solution(_ n:Int) -> Int {
    var answer = Int64(n)
    var oneCount = String(n, radix: 2).filter { $0 == "1" }.count
    
    while true {
        answer += 1
        let count = String(answer, radix: 2).filter { $0 == "1" }.count
        if oneCount == count {
            break
        }
    }
    
    return Int(answer)
}