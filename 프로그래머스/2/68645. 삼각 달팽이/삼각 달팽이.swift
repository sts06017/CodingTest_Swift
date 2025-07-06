import Foundation

func solution(_ n:Int) -> [Int] {
    if n == 1 {
        return [1]
    }
    
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    var cnt = 0
    var dir = 0
    var (x, y) = (0, -1)
    var len = n
    let maxValue: Int = n * (n+1)/2
    
    while len > 0 {
        for _ in 0..<len {
            switch dir % 3 {
            // 아래로
            case 0: y += 1
            // 오른쪽으로
            case 1: x += 1
            // 위로
            case 2: x -= 1; y -= 1
                
            default:
                break
            }
            
            cnt += 1
            arr[y][x] = cnt
        }
        
        dir += 1
        len -= 1
    }
    
    return arr.flatMap{ $0 }.filter{ $0 != 0 }
}