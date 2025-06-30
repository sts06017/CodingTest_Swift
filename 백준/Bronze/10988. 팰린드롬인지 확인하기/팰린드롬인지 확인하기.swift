let input = Array(readLine()!)

var forward = input[0..<input.count/2].map{ String($0) }

var backward = input[(input.count/2)..<input.count].reversed().map{ String($0) }

if input.count % 2 == 1 {
    backward.removeLast()
}

print(forward == backward ? "1" : "0")
