import Foundation

func solution(_ my_string:String) -> String {
    var tmp = ""
    for i in my_string {
        if !tmp.contains(i) {
            tmp += String(i)
        }
    }
    return tmp
}