import Foundation

func solution(_ chicken:Int) -> Int {
    var n = 0
    var chicken = chicken
    while(chicken >= 10){
        chicken = chicken - 9
        n += 1
    }
    return n
}