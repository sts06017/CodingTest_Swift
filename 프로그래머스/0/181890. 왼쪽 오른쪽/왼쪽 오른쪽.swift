import Foundation

func solution(_ str_list:[String]) -> [String] {
    var arr = str_list
    var result:[String] = []
    
    for i in str_list {
        if i == "l" {
            return result
        } else if i == "r" {
            arr.removeFirst()
            return arr
        } else {
            result.append(arr.removeFirst())
        }
    }
    
    return []
}