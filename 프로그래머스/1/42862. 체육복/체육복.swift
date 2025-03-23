import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr = Array(repeating: 1, count: n)
    
    for i in arr.indices {
        if lost.contains(i+1) {
            arr[i] -= 1
        }
        if reserve.contains(i+1) {
            arr[i] += 1
        }
    }
    
    for (index, value) in arr.enumerated() {
        if arr[index] == 0 {
            if index - 1 >= 0, arr[index-1] == 2 {
                arr[index-1] -= 1
                arr[index] += 1
            } else if index + 1 < arr.count, arr[index+1] == 2 {
                arr[index+1] -= 1
                arr[index] += 1
            }
        }
    }
    
    return arr.filter{ $0 > 0 }.count
}