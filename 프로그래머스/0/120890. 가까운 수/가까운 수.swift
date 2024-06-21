import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let sortedArr = array.sorted()
    var arr = sortedArr.map{ abs($0 - n) }
    
    return sortedArr[arr.firstIndex(of: arr.min()!)!]
}