import Foundation

func solution(_ array:[Int]) -> [Int] {
    for i in 0...array.count {
        if array[i] == array.max()! { return [array.max()!, i]}
    }
    return []
}