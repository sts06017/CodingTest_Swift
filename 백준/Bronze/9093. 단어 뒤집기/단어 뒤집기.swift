//MARK: - 단어 뒤집기 (백준)
import Foundation

class Stack {
    private var arr: [String] = []

    func push(_ s: String) {
        arr.append(s)
    }

    func pop() -> String {
        guard !arr.isEmpty else {
            return ""
        }
        return arr.removeLast()
    }

    func size() -> Int {
        return arr.count
    }

    func empty() -> Bool {
        return arr.isEmpty
    }

    func top() -> String {
        guard !arr.isEmpty else {
            return ""
        }
        return arr.last!
    }
}

let input = Int(readLine()!)!

for _ in 0..<input {
    var stack = Stack()
    
    var words: [String] = readLine()!.split(separator: " ").map{ String($0) }
    var result: String = ""
    
    for (index, word) in words.enumerated() {
        for s in word {
            stack.push(String(s))
        }
        
        var temp = ""
        
        while !stack.empty()  {
            temp += stack.pop()
        }
        
        result += temp
        if index != words.count - 1 {
            result += " "
        }
    }
    
    print(result)
}