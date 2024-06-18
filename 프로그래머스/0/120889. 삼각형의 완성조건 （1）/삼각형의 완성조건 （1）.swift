import Foundation

func solution(_ sides:[Int]) -> Int {
    var arr = sides
    let big = arr.remove(at: arr.firstIndex(of: arr.max()!)!)
    return big < arr[0] + arr[1] ? 1 : 2
}