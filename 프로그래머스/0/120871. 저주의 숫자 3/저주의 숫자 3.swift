import Foundation

func solution(_ n:Int) -> Int {
    var result:[Int] = []
    var temp = 1
    while(result.count < n) {
        if temp % 3 != 0, !String(temp).contains("3"){
            result.append(temp)
        }
        temp += 1
    }
    print(result)
    return result.last!
}