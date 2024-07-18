import Foundation

func solution(_ babbling:[String]) -> Int {
    let dic = ["aya", "ye", "woo", "ma"]
    var babbling = babbling
    for i in 0..<4 {
        babbling = babbling.map{ $0.replacingOccurrences(of: dic[i], with: "0")}
    }
    return babbling.filter{Int($0) != nil}.count

}