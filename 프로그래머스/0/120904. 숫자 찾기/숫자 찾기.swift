import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let arr = String(num).map{ String($0) }
    return (arr.firstIndex(of: String(k)) ?? -2) + 1
}