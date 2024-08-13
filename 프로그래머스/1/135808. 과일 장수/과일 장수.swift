import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted(by: >)
    
    var arr: [[Int]] = []
    
    for i in 0..<score.count/m {
        arr.append(Array(score[i*m...i*m+m-1]))
    }
//    print(arr)
    
    let result = arr.map{ $0.min()! * m }.reduce(0, +)
    
//    print(result)
    return result
}