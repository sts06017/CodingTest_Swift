import Foundation

func solution(_ s:String) -> String {
    var dic:[Character:Int] = [:]
    for i in s {
        if dic[i] != nil {
            dic[i]! += 1
        } else {
            dic.updateValue(1, forKey: i)
        }
    }
    
    var str = ""
    
    for (k, v) in dic {
        if v == 1 {
            str += String(k)
        }
    }
    
    return String(str.sorted())
}