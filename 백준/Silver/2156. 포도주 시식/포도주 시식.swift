let n = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: n+1)
var wine: [Int] = [0]
for _ in 0..<n {
    wine.append(Int(readLine()!)!)
}

if n == 1 {
    print(wine[1])
} else if n == 2{
    print(wine[1] + wine[2])
} else {
    dp[0] = 0
    dp[1] = wine[1]
    dp[2] = wine[1] + wine[2]

    for i in 3..<n+1 {
        dp[i] = max(dp[i-1], wine[i] + dp[i-2], wine[i] + wine[i-1] + dp[i-3])
    }

    print(dp[n])
}