import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var tmp: [Int] = [ ]
    var result: [[Int]]=[]
    var num = 0
    
    for i in 0..<num_list.count / n {
        tmp = []
        for j in 0..<n {
            tmp.append(num_list[num])
            num += 1
        }
        result.append(tmp)
    }
    return result
}
