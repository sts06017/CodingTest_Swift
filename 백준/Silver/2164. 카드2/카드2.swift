let N = Int(readLine()!)!

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
    
    func count() -> Int {
        return inbox.count + outbox.count
    }
}
var queue = DoubleStackQueue()
for i in 1...N {
    queue.push(String(i))
}
while queue.count() > 1 {
    let _ = queue.pop()
    let x = queue.pop()!
    queue.push(x)
}
print(queue.pop()!)