let N = Int(readLine()!)!
var stack: [Int] = []
for i in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    switch input[0] {
    case 1:
        // push
        stack.append(input[1])
    case 2:
        // pop
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack.removeLast())
        }
    case 3:
        // count
        print(stack.count)
    case 4:
        // isEmpty
        print(stack.isEmpty ? 1 : 0)
    case 5:
        // top
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack.last!)
        }
    default:
        break
    }
}