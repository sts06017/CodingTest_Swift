import Foundation

struct Stack {
    var arr: [String] = []
    var pointer: Int = -1
    
    mutating func push(_ str: String) {
        arr.append(str)
        pointer += 1
    }
    
    mutating func pop() -> String? {
        if pointer > -1 {
            pointer -= 1
        }
        return arr.popLast()
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
    }
    
    func isSame() -> Bool {
        if pointer > 0 && arr[pointer] == arr[pointer - 1] {
            return true
        } else {
            return false
        }
    }
}

func solution(_ s:String) -> Int{
    var stack: Stack = Stack()
    var answer: Int = -1
    var str = s
    
    for i in str {
        stack.push(String(i))
        
        if stack.isSame() {
            stack.pop()
            stack.pop()
        }
    }
    
    return stack.isEmpty() ? 1 : 0
}