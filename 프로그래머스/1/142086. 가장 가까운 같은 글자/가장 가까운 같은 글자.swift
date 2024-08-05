import Foundation

func solution(_ s:String) -> [Int] {
    var reversed:[String] = []
    var result:[Int] = []
    var s = s
    for char in s {
        if reversed.contains(String(char)) {
            let index = reversed.firstIndex(of: String(char))! + 1
            reversed.insert(String(char), at: 0)
            result.append(index)
        } else {
            reversed.insert(String(char), at: 0)
            result.append(-1)
        }
    }

    return result
}