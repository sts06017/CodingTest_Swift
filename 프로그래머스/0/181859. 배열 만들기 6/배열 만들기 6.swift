import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk:[Int] = []
    var i = 0
    
    while (i < arr.count) {
        if stk.count == 0 {
            stk.append(arr[i])
            i += 1
            continue
        }
        
        if stk.count > 0, stk.last == arr[i] {
            stk.removeLast()
            i += 1
            continue
        }
        
        if stk.count > 0 , stk.last != arr[i] {
            stk.append(arr[i])
            i += 1
            continue
        }
    }
    if stk.count == 0 {
        return [-1]
    }
    return stk
}