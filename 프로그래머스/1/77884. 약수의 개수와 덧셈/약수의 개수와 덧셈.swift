import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var sol: [Int] = (left...right).map{
        if countOfYaksu($0) % 2 == 0 {
            return $0
        } else {
            return $0 * -1
        }
    }
    
    return sol.reduce(0, +)
}

func countOfYaksu(_ n: Int) -> Int{
    var count = 0
    var i = 1
    while i*i <= n {
        if n % i == 0{
            if i * i == n {
                count += 1
                
            } else {
                count += 2
            }
        }
        i += 1
    }
    return count
}
