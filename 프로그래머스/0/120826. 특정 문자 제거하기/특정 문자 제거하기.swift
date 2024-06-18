import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var str = my_string
    str.removeAll(where: { String($0) == letter })
    return str
}