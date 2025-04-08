//MARK: - 쇠막대기 (백준)
import Foundation

struct Stack {
    var array: [String] = []
    mutating func push(_ element: String) {
        array.append(element)
    }
    mutating func pop() -> String? {
        return array.popLast()
    }
    mutating func peek() -> String? {
        return array.last
    }
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    func count() -> Int {
        return array.count
    }
}

let input = readLine()!.map{String($0)}
var stack: Stack = Stack()
var last: String = ""
var count = 0

for s in input {
    if s == "(" {
        stack.push(s)
    } else {
        stack.pop()
        if last == ")" {
            count += 1
        } else {
            count += stack.count()
        }
    }
    last = s
}

print(count)