let T = Int(readLine()!)!
for _ in 0..<T {
    var stack: [String] = []
    let input = Array(readLine()!)
    if input[0] == ")" {
        print("NO")
        continue
    }
    for str in input {
        if str == "(" {
            stack.append(String(str))
        } else if str == ")" {
            if stack.last == "(" {
                stack.removeLast()
            }
            else {
                stack.append(String(str))
            }
        }
    }
    if stack.isEmpty {
        print("YES")
    } else {
        print("NO")
    }
}

