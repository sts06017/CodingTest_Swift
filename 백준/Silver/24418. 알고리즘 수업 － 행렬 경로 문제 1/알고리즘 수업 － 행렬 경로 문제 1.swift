import Foundation


// ✅ 조합 (이항 계수) 저장 배열
var comb = Array(repeating: Array(repeating: 0, count: 31), count: 31)

// ✅ 파스칼의 삼각형을 이용한 조합 계산
func precomputeCombinations() {
    for i in 0..<31 {
        comb[i][0] = 1
        comb[i][i] = 1
    }
    for i in 2..<31 {
        for j in 1..<i {
            comb[i][j] = comb[i - 1][j - 1] + comb[i - 1][j]
        }
    }
}

// ✅ 조합 테이블 미리 계산
precomputeCombinations()

// ✅ 입력 받기
let N = Int(readLine()!)!

// ✅ 결과 출력
print("\(2 * comb[2 * N - 1][N]) \(N * N)")