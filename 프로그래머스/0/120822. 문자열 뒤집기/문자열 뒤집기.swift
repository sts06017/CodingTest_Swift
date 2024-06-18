import Foundation

func solution(_ my_string:String) -> String {
    var str:[String] = []
    for i in my_string {
        str.append("\(i)")
    }
    return str.reversed().joined(separator: "")
}