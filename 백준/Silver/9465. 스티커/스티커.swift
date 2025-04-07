//MARK: - 스티커 (백준)
import Foundation

let input = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<input {
    let n = Int(readLine()!)!
    var sticker: [[Int]] = []
    for _ in 0..<2 {
        let line = readLine()!.split(separator: " ").map{String($0)}.compactMap(Int.init)
        sticker.append(line)
    }
    
    var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)
    
    dp[0][0] = 0
    dp[0][1] = sticker[0][0]
    dp[0][2] = sticker[1][0]
    
    for i in 1..<n {
        dp[i][0] = max(dp[i-1][0], dp[i-1][1], dp[i-1][2])
        dp[i][1] = max(dp[i-1][0], dp[i-1][2]) + sticker[0][i]
        dp[i][2] = max(dp[i-1][0], dp[i-1][1]) + sticker[1][i]
    }
    
    result.append(max(dp[n-1][0], dp[n-1][1], dp[n-1][2]))
}

print(result.map{String($0)}.joined(separator: "\n"))