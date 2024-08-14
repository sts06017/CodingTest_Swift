import Foundation

func solution(_ n:Int) -> Int {
    if n < 2 { return 0 }
    if n == 2 { return 1 }
    if n == 3 { return 2 }
    
    var isPrime: [Bool] = Array(repeating: true, count: n+1)
    isPrime[0] = false
    isPrime[1] = false
    
    for i in 2...Int(Double(n).squareRoot()) {
        if isPrime[i] {
            for multiple in stride(from: i*i, through: n, by: i) {
                isPrime[multiple] = false
            }
        }
    }
    
    return isPrime.filter{ $0 }.count
}