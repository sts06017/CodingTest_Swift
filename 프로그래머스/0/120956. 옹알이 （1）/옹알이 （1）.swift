import Foundation

func solution(_ babbling:[String]) -> Int {
    let dic = ["aya", "ye", "woo", "ma"]
    var result0 = babbling.map{ $0.replacingOccurrences(of: dic[0], with: "0") }
    var result1 = result0.map{ $0.replacingOccurrences(of: dic[1], with: "1") }
    var result2 = result1.map{ $0.replacingOccurrences(of: dic[2], with: "2") }
    var result3 = result2.map{ $0.replacingOccurrences(of: dic[3], with: "3")}
    let result = result3.filter{ Int($0) != nil }
    
    return result.count

}