import Foundation

func solution(_ before:String, _ after:String) -> Int {
    var beforeDic:[Character:Int] = [:]
    var afterDic:[Character:Int] = [:]
    
    for i in before {
        if beforeDic[i] == nil {
            beforeDic.updateValue(1, forKey: i)
        } else {
            beforeDic[i]! += 1
        }
    }
    for i in after {
        if afterDic[i] == nil {
            afterDic.updateValue(1, forKey: i)
        } else {
            afterDic[i]! += 1
        }
    }
    
    if beforeDic == afterDic {
        return 1
    } else {
        return 0
    }
}