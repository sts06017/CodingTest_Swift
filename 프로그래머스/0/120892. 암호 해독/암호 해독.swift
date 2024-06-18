import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    var arr: [String] = []
    
    for i in cipher {
        arr.append(String(i))
    }
    
    for i in 1...arr.count {
        if i % code == 0 {
            result += arr[i-1]
        }
    }
    
    return result
}