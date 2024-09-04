import Foundation

func solution(_ s:String) -> Bool {
    var stack: [Character] = []
    
    if !s.contains("(") || !s.contains(")") {
       return false
    }
    
    for c in s {
        switch c {
        case "(":
            stack.append(c)
        case ")":
            if stack.last == "(" {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        default:
            break
        }
    }

    return stack.isEmpty
}