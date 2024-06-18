import Foundation

func solution(_ age:Int) -> String {
    let age_dic = [0: "a", 1: "b", 2: "c", 3: "d", 4: "e", 5: "f", 6: "g", 7: "h", 8: "i", 9: "j"]
    var a = ""
    let age_str = String(age)
    for i in age_str {
        a += age_dic[Int(String(i))!]!
    }
    return a
}