import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stageCount = Array(repeating: 0, count: N + 1)
        var players = stages.count

        // 각 스테이지에 도달한 사람 수 계산
        for stage in stages {
            if stage <= N {
                stageCount[stage] += 1
            }
        }

        var result = [(stage: Int, failRate: Double)]()

        // 실패율 계산
        for i in 1...N {
            let failRate = Double(stageCount[i]) / Double(players)
            players -= stageCount[i]
            result.append((i, failRate))
        }

        // 실패율을 기준으로 정렬
        result.sort {
            if $0.failRate == $1.failRate {
                return $0.stage < $1.stage
            }
            return $0.failRate > $1.failRate
        }

        // 결과 추출
        return result.map { $0.stage }
}