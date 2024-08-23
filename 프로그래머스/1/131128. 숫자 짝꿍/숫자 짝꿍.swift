import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xCount: [Int] = Array(repeating: 0, count: 10)
    var yCount: [Int] = Array(repeating: 0, count: 10)
    var result: String = ""
    
    for s in X {
        xCount[Int(String(s))!] += 1
    }
    
    for s in Y {
        yCount[Int(String(s))!] += 1
    }
    
    for i in stride(from: 9, through: 0, by: -1) {
        result.append(String(repeating: "\(i)", count: min(xCount[i], yCount[i])))
    }
    
    if result.isEmpty {
        return "-1"
    } else if result.first! == "0" {
        return "0"
    } else {
        return result
    }
}