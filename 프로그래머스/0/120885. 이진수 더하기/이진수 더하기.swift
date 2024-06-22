import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    let b1 = Int(bin1, radix: 2)!
    let b2 = Int(bin2, radix: 2)!
    return String(b1 + b2, radix: 2)
}