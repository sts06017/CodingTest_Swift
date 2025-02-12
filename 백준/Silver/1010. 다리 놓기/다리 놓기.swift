var queue: [[Int]] = Array(repeating: Array(repeating: 1, count: 31), count: 31)

func combination() {
    for i in 1...30 {
        for j in 1...i {
            if j == 0 || i == j {
                queue[i][j] = 1
            } else if i > 0 {
                queue[i][j] = queue[i-1][j-1] + queue[i-1][j]
            }
        }
    }
}

combination()

let nums = Int(readLine()!)!
var arr: [[Int]] = []
for i in 0..<nums {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (n, m) = (input[0], input[1])
    arr.append([n, m])
}
for i in 0..<nums {
    print(queue[arr[i][1]][arr[i][0]])
}
