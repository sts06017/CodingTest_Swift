import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    let sortedArr = numlist.sorted(by: <).sorted { a, b in
        if abs(a - n) < abs(b - n) {
            return a > b
        } else if abs(a - n) == abs(b - n) {
            return max(a, b) > min(a, b)
        } else {
            return a < b
        }
    }
    return sortedArr
}