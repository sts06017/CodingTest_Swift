import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result:[Int] = []
    for i in queries {
        let temp = arr[i[0]...i[1]].filter{ $0 > i[2] }
        
        if temp.isEmpty {
            result.append(-1)
        } else {
            result.append(temp.min()!)
        }
    }
    
    return result
}