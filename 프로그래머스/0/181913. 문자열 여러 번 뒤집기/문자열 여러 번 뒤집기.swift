import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var result:[String] = my_string.map{ String($0) }
    
    for i in queries {
        result[i[0]...i[1]].reverse()
    }
    
    return result.joined()
}