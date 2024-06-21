import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    var nums = (i...j).filter({ num -> Bool in
        for i in String(num) {
            if String(i) == String(k) {
                result += 1
            }
        }
        return true
    })
    return result
}