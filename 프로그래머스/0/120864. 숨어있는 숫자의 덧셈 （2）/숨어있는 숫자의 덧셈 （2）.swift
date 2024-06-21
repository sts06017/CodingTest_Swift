import Foundation

func solution(_ my_string:String) -> Int {
    var str1 = my_string.map{ String($0) }
    var tmp = ""

    var intArr:[Int] = []
    var i = 0

    while i < my_string.count {
        if Int(str1[i]) != nil {
            tmp += str1[i]
        } else {
            print(tmp)
            guard Int(tmp) != nil else {
                i += 1
                continue
            }
            intArr.append(Int(tmp)!)
            tmp = ""
        }
        i += 1
        print(intArr)
    }
    intArr.append(Int(tmp) ?? 0)
    return intArr.reduce(0){ $0 + $1 }
}