import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    let a = box[0] / n
    let b = box[1] / n
    let c = box[2] / n
    
    return a * b * c
}