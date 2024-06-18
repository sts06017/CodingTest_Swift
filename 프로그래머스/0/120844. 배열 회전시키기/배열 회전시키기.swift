import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result = numbers
    
    switch direction {
    case "left":
        result.append(result.remove(at: 0))
        return result
        
    case "right":
        result.insert(result.remove(at: result.count - 1), at: 0)
        return result
        
    default: return [0]
    }
}