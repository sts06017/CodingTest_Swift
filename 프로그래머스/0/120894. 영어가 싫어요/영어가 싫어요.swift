import Foundation

func solution(_ numbers:String) -> Int64 {
    let strNums = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var tmp = ""
    var result = ""
    
    for i in numbers {
        tmp += String(i)
        
        switch tmp {
        case strNums[0]:
            result += "0"
            tmp = ""
        case strNums[1]:
            result += "1"
            tmp = ""
        case strNums[2]:
            result += "2"
            tmp = ""
        case strNums[3]:
            result += "3"
            tmp = ""
        case strNums[4]:
            result += "4"
            tmp = ""
        case strNums[5]:
            result += "5"
            tmp = ""
        case strNums[6]:
            result += "6"
            tmp = ""
        case strNums[7]:
            result += "7"
            tmp = ""
        case strNums[8]:
            result += "8"
            tmp = ""
        case strNums[9]:
            result += "9"
            tmp = ""
        default: continue
        }
    }
    
    return Int64(result) ?? 0
}
