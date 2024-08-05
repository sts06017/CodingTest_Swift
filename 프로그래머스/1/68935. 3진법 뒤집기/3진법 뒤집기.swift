import Foundation

func solution(_ n:Int) -> Int {
    var samZin = String(n, radix: 3)
    var reversedSamZin = samZin.reversed().map{String($0)}
    var sipZin = Int(reversedSamZin.joined(), radix: 3)!
    
    return sipZin
}