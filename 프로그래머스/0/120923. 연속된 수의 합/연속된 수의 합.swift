import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let jungan = total / num
    if total % num > 0 {
        var arr = [Int](jungan - num/2 + 1...jungan + num/2)
        return arr
    } else {
        var arr = [Int](jungan - num/2...jungan + num/2)
        print("arr: ",arr)
        return arr
    }
}