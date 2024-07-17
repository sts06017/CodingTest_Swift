import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var arr = arr 
    if arr.count % 2 == 0 {
        for i in stride(from: 1, through: arr.count - 1, by: +2) {
            arr[i] += n
        }
    } else {
        for i in stride(from: 0, through: arr.count - 1, by: +2) {
            arr[i] += n
        }
    }
    return arr

}