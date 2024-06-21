import Foundation

func solution(_ n:Int) -> Int {
        var tmp = 1
    for i in 1...n {
        if tmp * (i+1) > n {
            return i
        }
        else {
            tmp *= (i+1)
            
        }
    }
    return 1
}