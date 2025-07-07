var arr: [[Int]] = []

for _ in 0..<9 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(input)
}

var maxValue: Int = -1
var (x, y): (Int, Int) = (-1, -1)

for i in 0..<9 {
    for j in 0..<9 {
        if arr[i][j] > maxValue {
            maxValue = arr[i][j]
            x = i
            y = j
        }
    }
}

print(maxValue)
print("\(x+1) \(y+1)")