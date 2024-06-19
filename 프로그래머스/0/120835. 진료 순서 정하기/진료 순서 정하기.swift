import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var afterSort = emergency.sorted(by: > )
    var beforeSort = emergency
    var resultArr: [Int] = [ ]
    
    var emergDic:[Int:Int] = [:]
    
    for i in 1...afterSort.count {
        emergDic.updateValue(i, forKey: afterSort[i - 1])
    }
    for i in beforeSort {
        resultArr.append(emergDic[i]!)
    }
    
    return resultArr
}