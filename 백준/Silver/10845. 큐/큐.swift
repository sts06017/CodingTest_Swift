import Foundation

var n = Int(readLine()!)!
var queue: [Int] = []

for i in 0..<n {
    let command = readLine()!.split(separator: " ")

    switch command[0] {
    case "push":
        queue.append(Int(command[1])!)
    case "pop":
        if queue.isEmpty {
            print("-1")
        } else {
            print(queue.remove(at: 0))
        }
    case "size":
        print(queue.count)
    case "empty":
        print(queue.isEmpty ? "1" : "0")
    case "front":
        print(queue.first ?? "-1")
    case "back":
        print(queue.last ?? "-1")
    default :
        break
    }
}
