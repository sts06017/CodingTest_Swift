import Foundation

func solution(_ polynomial:String) -> String {
    let one = polynomial.replacingOccurrences(of: "+", with: "").split(separator: " ")
    
    let two = one.filter{$0.contains("x")}
    
    let three = two.map{String($0) == "x" ? "1x" : $0}
    
    let four = three.map{ String($0).replacingOccurrences(of: "x", with: "") }
    
    let 계수 = four.map{Int(String($0))!}.reduce(0, +)
    
    let 상수 = one.filter{!$0.contains("x")}.map{Int(String($0))!}.reduce(0, +)
    
    if 계수 == 0 {
        return "\(상수)"
    }else if 계수 == 1 && 상수 != 0 {
        return "x + \(상수)"
    } else if 계수 == 1 && 상수 == 0 {
        return "x"
    } else if 상수 == 0 {
        return "\(계수)x"
    }
    return "\(계수)x + \(상수)"
}