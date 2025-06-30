let n = Int(readLine()!)!

var arr: [String] = []
for i in 1...n {
    var str = ""
    for _ in 0..<(n - i) {
        str += " "
    }
    for _ in 0..<(2 * i - 1) {
        str += "*"
    }
    arr.append(str)
}

print(arr.joined(separator: "\n"))
for i in (0..<n-1).reversed() {
    print(arr[i])
}