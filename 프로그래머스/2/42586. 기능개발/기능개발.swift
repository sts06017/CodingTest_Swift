import Foundation

struct Progress {
    var work: Int
    var speed: Int
    var day: Int {
        let x = (100-work)/speed
        if (100-work)%speed > 0 {
            return x+1
        } else {
            return x
        }
    }
}

struct Stack {
    private var arr: [Progress] = []
    
    mutating func clear() -> Int {
        let count = arr.count
        arr = []
        return count
    }
    
    mutating func push(_ progress: Progress) {
        arr.append(progress)
    }
    
    func biggest() -> Int {
        if arr.isEmpty {
            return 100
        } else {
            return arr.sorted { $0.day > $1.day }.first!.day
        }
    }
    
    func isEmpty() -> Bool {
        arr.isEmpty
    }
}

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresses = progresses
    var arr: [Progress] = []
    var stack = Stack()
    var result: [Int] = []
    
    for (index, progress) in progresses.enumerated() {
        let x: Progress = Progress(work: progress, speed: speeds[index])
        arr.append(x)
    }
    
    while(!arr.isEmpty) {
        let progress = arr.removeFirst()
        if stack.biggest() >= progress.day {
            stack.push(progress)
        } else {
            let count = stack.clear()
            result.append(count)
            stack.push(progress)
        }
    }
    
    if !stack.isEmpty() {
        result.append(stack.clear())
    }
    
    return result
}