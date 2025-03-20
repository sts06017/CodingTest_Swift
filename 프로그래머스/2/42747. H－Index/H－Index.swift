import Foundation

func solution(_ citations:[Int]) -> Int {
    var citations = citations.sorted(by: >)
    
    for (index, num) in citations.enumerated() {
        if num < index+1 {
            return index
        }
        
        if index+1 == citations.count {
            return index+1
        }
    }
    
    return 0
}