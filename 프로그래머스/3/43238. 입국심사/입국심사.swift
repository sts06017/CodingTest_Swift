import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var result = 0
    var min = times.min()!
    var max = times.min()! * n
    
    while min <= max {
        var mid = (min + max) / 2
        var total = 0
        for time in times {
            total += mid / time
        }
        
        if total < n {
            min = mid + 1
        } else {
            result = mid
            max = mid - 1
        }
    }
    
    return Int64(result)
}