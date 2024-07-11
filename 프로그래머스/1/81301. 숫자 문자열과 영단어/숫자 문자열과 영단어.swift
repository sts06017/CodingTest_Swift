import Foundation

func solution(_ s:String) -> Int {
    var s = s
    var result = [Int]()
    let dic: [String:Int] = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9]
    var tmp: String = ""
    
    for i in s {
        if Int(String(i)) == nil {
            tmp += String(i)
        } else {
            result.append(Int(String(i))!)
        }
        
        if let dic = dic[tmp] {
            result.append(dic)
            tmp = ""
        }
    }
    
    return Int(result.map{ String($0) }.joined())!
}