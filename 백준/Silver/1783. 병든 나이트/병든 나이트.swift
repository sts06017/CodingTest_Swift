import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var answer = 0

if N == 1 {
    // 세로 길이가 1이면 이동 불가
    answer = 1
} else if N == 2 {
    // 높이가 2인 경우: (M+1)/2번 이동이 가능하지만, 최대 4번까지 제한
    answer = min(4, (M + 1) / 2)
} else {
    // N이 3 이상인 경우
    if M < 7 {
        // M이 7 미만이면 이동에 제한이 있음
        answer = min(4, M)
    } else {
        // M이 7 이상인 경우, 4번 이상의 이동 사용 가능
        answer = M - 2
    }
}

print(answer)