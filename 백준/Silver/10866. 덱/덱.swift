//MARK: - 덱 (백준)
import Foundation

class Deque {
    var arr: [String] = []
    
    func push_front(_ s: String) {
        arr.insert(s, at: 0)
    }
    
    func push_back(_ s: String) {
        arr.append(s)
    }
    
    func pop_front() {
        guard !arr.isEmpty else {
            print("-1")
            return
        }
        
        print(arr.removeFirst())
    }
    
    func pop_back() {
        guard !arr.isEmpty else {
            print("-1")
            return
        }
        
        print(arr.removeLast())
    }
    
    func size() {
        print(arr.count)
    }
    
    func empty() {
        print(arr.isEmpty ? "1" : "0")
    }
    
    func front() {
        guard !arr.isEmpty else {
            print("-1")
            return
        }
        
        print(arr.first!)
    }
    
    func back() {
        guard !arr.isEmpty else {
            print("-1")
            return
        }
        
        print(arr.last!)
    }
}

let N = Int(readLine()!)!

var deque: Deque = Deque()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    switch input[0] {
    case "push_front":
        deque.push_front(input[1])
    case "push_back":
        deque.push_back(input[1])
    case "pop_front":
        deque.pop_front()
    case "pop_back":
        deque.pop_back()
    case "size":
        deque.size()
    case "empty":
        deque.empty()
    case "front":
        deque.front()
    case "back":
        deque.back()
    default:
        continue
    }
}