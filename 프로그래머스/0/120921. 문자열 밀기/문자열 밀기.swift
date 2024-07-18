import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var result = 0
    var A = A.map{String($0)}
    var B = B.map{String($0)}
    
    while(A != B) {
        result += 1
        A.insert(A.removeLast(), at: 0)
        
        if result > A.count {
            return -1
        }
    }
    
    return result
}