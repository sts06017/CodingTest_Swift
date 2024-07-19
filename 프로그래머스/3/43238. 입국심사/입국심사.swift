import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var minTime = 1
    var maxTime = times.max()! * n
    var answer = maxTime

    while minTime <= maxTime {
        let midTime = (minTime + maxTime) / 2
        var total = 0
        
        for time in times {
            total += midTime / time
        }

        if total < n {
            minTime = midTime + 1
        } else {
            answer = midTime
            maxTime = midTime - 1
        }
    }

    return Int64(answer)
}