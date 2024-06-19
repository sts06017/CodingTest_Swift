import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in 1...n {
        if (1...i).filter({( i % $0 == 0)}).count > 2 { result += 1 }
    }
    
    return result
}