let N = Int(readLine()!)!
let isQueue = readLine()!.split(separator: " ").map{ $0 == "0" ? true : false }
var queue_stack = readLine()!.split(separator: " ").map{String($0)}
let M = Int(readLine()!)!
var elements = readLine()!.split(separator: " ").map{String($0)}
var deque: [String] = []
// [1,2,3,4]
// 10, 20, 30
for (index, t) in isQueue.enumerated() {
    if t {
        deque.append(queue_stack[index])
    }
}
var front: [String] = []
var result: [String] = []
for i in elements {
    front.append(i)
    if deque.isEmpty {
        deque = front.reversed()
        front.removeAll()
    }
    result.append(deque.removeLast())
}
print(result.joined(separator: " "))