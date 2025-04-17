import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

// 비용 입력
var cost = [[Int]]()
for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    cost.append(row)
}

// dp[y][x][d]: y행 x열에 방향 d로 도착했을 때 최소 비용
// d: 0(↙️), 1(⬇️), 2(↘️)
let INF = Int.max
var dp = Array(repeating: Array(repeating: Array(repeating: INF, count: 3), count: M), count: N)

// 초기화: 첫 번째 행은 이전 방향이 없으므로 d마다 초기화
for x in 0..<M {
    for d in 0..<3 {
        dp[0][x][d] = cost[0][x]
    }
}

// 점화식 적용
for y in 1..<N {
    for x in 0..<M {
        for d in 0..<3 { // 현재 방향
            let nx = x + (d == 0 ? -1 : (d == 1 ? 0 : 1)) // 이전 위치 x
            if nx < 0 || nx >= M { continue } // 범위 밖은 제외
            for prev in 0..<3 {
                if d == prev { continue } // 같은 방향 연속 불가
                if dp[y-1][nx][prev] == INF { continue }
                dp[y][x][d] = min(dp[y][x][d], dp[y-1][nx][prev] + cost[y][x])
            }
        }
    }
}

// 마지막 줄의 최소값 찾기
var answer = INF
for x in 0..<M {
    for d in 0..<3 {
        answer = min(answer, dp[N-1][x][d])
    }
}

print(answer)