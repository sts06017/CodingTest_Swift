import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    return Array(1...number).map{ countOfYaksu($0) }.reduce(0) { partialResult, yaksu in
        yaksu > limit ? partialResult + power : partialResult + yaksu
    }
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
