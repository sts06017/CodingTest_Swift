import Foundation

let MOD = 1_000_000_007
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var dp = Array(repeating: 0, count: N + 1)
dp[0] = 1

for i in 1...N {
    dp[i] = dp[i - 1]  // Q 스킬
    if i >= M {
        dp[i] = (dp[i] + dp[i - M]) % MOD  // W 스킬
    }
}

print(dp[N])