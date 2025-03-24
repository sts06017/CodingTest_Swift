let N = Int(readLine()!)!
var stack: [Int] = []
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var nextIndex = 1

while !input.isEmpty {
    if let next = input.first, next != nextIndex {
        if stack.last == nextIndex {
            stack.removeLast()
            nextIndex += 1
        } else {
            stack.append(input.removeFirst())
        }
    }
    
    if let next = input.first, next == nextIndex {
        input.removeFirst()
        nextIndex += 1
    }
}

stack = stack.reversed()
for i in stack {
    if i != nextIndex {
        print("Sad")
        break
    } else {
        stack.removeFirst()
        nextIndex += 1
    }
}

if stack.isEmpty, input.isEmpty {
    print("Nice")
}
