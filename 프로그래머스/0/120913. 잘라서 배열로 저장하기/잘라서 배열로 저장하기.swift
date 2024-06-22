import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var tmpStr = [String]()
    var str = my_str
    var index = 0
    
    if my_str.count % n > 0 {
        index = my_str.count / n + 1
    } else {
        index = my_str.count / n
    }
    
    for _ in 1...index {
        tmpStr.append(String(str.prefix(n)))
        str = String(str.dropFirst(n))
    }

    return tmpStr
}