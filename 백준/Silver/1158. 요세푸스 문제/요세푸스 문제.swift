//MARK: - 요세푸스 문제 (백준)
import Foundation

struct DoubleStackQueue {
    var inbox: [String] = []
    var outbox: [String] = []

    mutating func push(_ x: String) {
        inbox.append(x)
    }

    mutating func pop() -> String? {
        if outbox.isEmpty {
            outbox = inbox.reversed()
            inbox.removeAll()
        }
        return outbox.popLast()
    }
    
    mutating func lotate() {
        if let front = pop() {
            push(front)
        }
    }

    func count() -> Int {
        return inbox.count + outbox.count
    }
    
    func empty() -> Bool {
        return count() == 0
    }
}

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
let K = input[1]

var result: [String] = []
var queue: DoubleStackQueue = DoubleStackQueue()

for i in 1...N {
    queue.push("\(i)")
}

var cnt = 0
while result.count < N {
    cnt += 1
    
    if cnt == K {
        if let i = queue.pop() {
            result.append(i)
        }
        cnt = 0
    } else {
        queue.lotate()
    }
}

print("<\(result.joined(separator: ", "))>")