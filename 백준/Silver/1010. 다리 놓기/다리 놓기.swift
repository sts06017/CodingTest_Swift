let T = Int(readLine()!)!

var queue: [[Int]] = Array(repeating: Array(repeating: 1, count: 31), count: 31)

func nCr() {
    for i in 1..<31 {
        for j in 1...i {
            if j == i { queue[i][j] = 1 }
            if j < i { queue[i][j] = queue[i-1][j-1] + queue[i-1][j] }
        }
    }
}
nCr()
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var (N, M) = (input[0], input[1])
    var result = queue[M][N]
    print(result)
}
