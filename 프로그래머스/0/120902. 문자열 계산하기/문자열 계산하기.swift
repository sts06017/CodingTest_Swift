import Foundation

func solution(_ my_string:String) -> Int {
    let strArr = my_string.split(separator: " ")
    var tmp = ""
    var tmp2 = ""
    var willAdd = ""
    var willSub = ""
    
    for i in strArr {
        switch i {
        case "+":
            print("+")
            willAdd = tmp
        case "-":
            print("-")
            willSub = tmp
        default:
            tmp = String(i)
            if willAdd != "" {
                tmp = String(Int(willAdd)! + Int(tmp)!)
                willAdd = ""
            } else if willSub != "" {
                tmp = String(Int(willSub)! - Int(tmp)!)
                willSub = ""
            }
        }
    }
    return Int(tmp)!
}