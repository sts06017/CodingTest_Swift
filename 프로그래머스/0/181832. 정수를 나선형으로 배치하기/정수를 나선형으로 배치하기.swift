import Foundation

func solution(_ n:Int) -> [[Int]] {
    var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    var cnt = 1
    var n = n
    
    for i in 0..<n {
        if i <= n {
            for j in i..<n {
                arr[i][j] = cnt
                cnt += 1
            }
        }
        
        if i+1 <= n {
            for j in i+1..<n {
                arr[j][n-1] = cnt
                cnt += 1
            }
        }
        
        if i <= n-1 {
            for j in (i..<n-1).reversed() {
                arr[n-1][j] = cnt
                cnt += 1
            }
        }
        
        if i+1 <= n-1 {
            for j in (i+1..<n-1).reversed() {
                arr[j][i] = cnt
                cnt += 1
            }
        }
        
        n -= 1
    }
    
    
    print(arr)
    return arr
}