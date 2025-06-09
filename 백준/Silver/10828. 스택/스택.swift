import Foundation

var n = Int(readLine()!)!
var stack: [Int] = []

for i in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        stack.append(Int(command[1])!)
    case "pop":
        print(stack.popLast() ?? "-1")
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? "1" : "0")
    case "top":
        print(stack.last ?? "-1")
    default :
        break
    }
}
