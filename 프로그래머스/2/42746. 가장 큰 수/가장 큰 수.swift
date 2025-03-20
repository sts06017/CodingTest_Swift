import Foundation

struct nums {
    var firstNum: Int
    var fullNum: Int
}
func solution(_ numbers:[Int]) -> String {
    var numsArray: [nums] = []
    
    for number in numbers {
        let first = Int(String(String(number).first!))!
        var num = nums(firstNum: first, fullNum: number)
        numsArray.append(num)
    }
    
    numsArray.sort { a, b in
        if a.firstNum == b.firstNum {
            let ab = "\(a.fullNum)\(b.fullNum)"
            let ba = "\(b.fullNum)\(a.fullNum)"
            return Int(ab)! > Int(ba)!
        } else {
            return a.firstNum > b.firstNum
        }
    }
    
    if numsArray.first!.fullNum == 0 {
        return "0"
    } else {
        return numsArray.map { String($0.fullNum) }.joined()   
    }
}